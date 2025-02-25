// LLM ChatGPT functionality
const questionInput = document.getElementById("question");
const askButton = document.getElementById("ask");
const chatBox = document.getElementById("chatBox");
const responseDiv = document.getElementById("response");

// Function to get a cookie by name
function getCookie(name) {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
}

// Function to set a cookie
function setCookie(name, value, days) {
    const expires = new Date(Date.now() + days * 864e5).toUTCString();
    document.cookie = `${name}=${encodeURIComponent(value)}; expires=${expires}; path=/`;
}

// Set initial response div state
responseDiv.style.display = "none";

// Function to handle the question submission
const handleAsk = () => {
    const question = questionInput.value.trim();
    questionInput.value = ""; // Clear input

    if (question) {
        clearPreviousResponse();
        setResponse('Please wait! Response is coming....');
        setIsLoading(true);

        // Get API key from cookies or prompt user
        let apiKey = getCookie("openai_api_key");
        if (!apiKey) {
            apiKey = prompt("Please enter your OpenAI API key:");
            if (!apiKey) {
                alert("API key is required to proceed.");
                setIsLoading(false);
                return;
            }
            setCookie("openai_api_key", apiKey, 30); // Store API key in a cookie for 30 days
        }

        const headers = {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${apiKey}`
        };

        const data = {
            model: "gpt-4",
            messages: [
                { role: "system", content: "You are the best coder, writing clean, efficient code in a user-friendly manner. Only output the code, without any explanations or additional text." },
                { role: "user", content: `The question is: ${question}` }
            ]
        };

        const api_url = "https://api.openai.com/v1/chat/completions";

        fetch(api_url, {
            method: "POST",
            headers: headers,
            body: JSON.stringify(data),
        })
        .then((response) => {
            if (response.ok) {
                return response.json();
            } else {
                throw new Error("Request failed!");
            }
        })
        .then((result) => {
            const ans = result.choices[0].message.content; // Extract OpenAI's response
            displayMessage(ans, 'bot');
            setIsLoading(false);
        })
        .catch((error) => {
            displayMessage('Something went wrong. Please try again.', 'bot');
            setIsLoading(false);
        });
    }
};

// Function to clear previous responses
const clearPreviousResponse = () => {
    while (chatBox.firstChild) {
        chatBox.removeChild(chatBox.firstChild);
    }
    responseDiv.style.display = "none"; // Hide response div
};

// Function to display a message in the chat
const displayMessage = (message, sender) => {
    const messageDiv = document.createElement("div");
    messageDiv.classList.add("chat-message", sender);
    
    // Wrap the message in a <pre> tag to preserve spaces and newlines
    messageDiv.innerHTML = `<pre>${message}</pre>`;
    
    chatBox.appendChild(messageDiv);
    chatBox.scrollTop = chatBox.scrollHeight; // Scroll to bottom
};

// Function to set response display
const setResponse = (text) => {
    responseDiv.style.display = "block";
    responseDiv.innerHTML = text;
};

// Function to set loading state
const setIsLoading = (isLoading) => {
    askButton.disabled = isLoading;
    askButton.innerHTML = isLoading ? '<img id="loading-img" src="assets/images/loading2.svg" width="110" height="20" alt="Loading" />' : 'Send';
};

// Event listener for button click
askButton.onclick = handleAsk;

// Event listener for Enter key to send message
questionInput.addEventListener("keypress", (event) => {
    if (event.key === "Enter") {
        event.preventDefault(); // Prevent the default action (like form submission)
        handleAsk(); // Call the send function
    }
});
