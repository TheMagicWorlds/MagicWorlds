
# **📌 Step-by-Step Guide to Running the Leads Generator**

## **1️⃣ Prerequisites**
- **LinkedHelper Software** (for email extraction)

---

## **2️⃣ Set Up the Script**
### **🔹 Clone or Upload the Script**
1. Open [Google Colab](https://colab.research.google.com/)
2. Click **File** → **Upload Notebook** and select the `.ipynb` file
   - OR Clone the GitHub repo (if applicable)

---

## **3️⃣ Run the Script**
1. Click on the **first cell** and press **Shift + Enter** to run.
2. Follow the on-screen **prompts**.

---

## **4️⃣ Handling API Key Inputs**
The API key runs out of queries after every 100 searches. After, the script will **ask you** to enter a new key.
- If you don’t have one, we have to generate a new **Google API Key**. :
1. Visit [Google Custom Search API](https://developers.google.com/custom-search/v1/introduction)
2. Click **Get API Key** and create a project
3. Copy the **API Key** and enter them in the prompt when the script asks.


---

## **5️⃣ Running Google Search for Leads**
The script will:
- Search for professionals based on **target companies** and **keywords**.
- Extract **LinkedIn profile links** and **descriptions**.
- Save the results into `profiles_without_email.csv`.

---

## **6️⃣ Extract Emails from LinkedIn Profiles**
Since LinkedIn doesn’t provide emails directly, we use **LinkedHelper**:

1. **Download LinkedHelper** ([Visit Site](https://linkedhelper.com))
2. **Start a Free Trial** using an email
3. **Log in to LinkedIn** inside LinkedHelper
4. **Run a Campaign** to extract emails from the profiles found in `profiles_without_email.csv`
5. **Export the Extracted Data** as `profiles_with_email.csv`
6. **Upload `profiles_with_email.csv` to Google Colab**

---

## **7️⃣ Merging Data to Get Emails**
1. **Run the script again** from where you left after uploading `profiles_with_email.csv`
2. The script will:
   - Match profiles from `profiles_without_email.csv` with extracted emails
   - Merge the data into `merged_results.csv`
3. The **final CSV file** will contain:
   - First Name, Last Name
   - Company Name
   - LinkedIn Profile URL
   - Email Address (if found)

---

## **8️⃣ Download the Final Results**
1. Click on the **Folder Icon** (Left sidebar in Colab)
2. Find `merged_results.csv`
3. **Right-click → Download**

---
