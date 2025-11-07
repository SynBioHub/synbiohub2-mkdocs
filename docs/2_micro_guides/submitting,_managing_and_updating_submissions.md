---
weight: 40
---

# Submitting, Managing, and Updating Submissions

## 4.1 Submitting

To submit your designs to SynBioHub, follow these steps:

1. Navigate to SynBioHub's home page.

2. Click on the **Submit** option, and it will direct you to the Submit page.

3. Drag and drop your file(s) or click **Browse Files** to select the file(s) you want to upload.

4. Scroll down the page to find the section where you can choose to create a new collection or use an existing one.

### 4.1.1 Creating a New Collection

1. In the **Create New Collection** section, fill in the following attributes:

   - **Name**: This is the name string that will be assigned to the submission.
   - **Collection Description**: This is the description string that briefly explains your submission.
   - **Collection ID**: This is a user-defined string identifier for the submission and should contain alphanumeric and underscore characters only.
   - **Collection Version**: This is the version string associated with the submission.
   - **Citations** (optional): This is a list of comma-separated PubMed IDs of citations to store with the submission, just for reference. It is an optional attribute.
   - **Handler**: Select a handler for processing the submission. By default, only one option is provided, but more handlers can be added via [submit plugins](https://github.com/SynBioHub/Plugin-Submit-Excel-Library).
   - **Overwrite Existing Collection**: You can choose to overwrite the existing objects in the collection, removing all the existing objects and adding new ones, or keep the old resources and add the new ones.

2. Click **Create** to finalize the new collection and submit your file(s).

### 4.1.2 Submitting to an Existing Collection

1. In the **Use Existing Collection** section, use the dropdown menu to select the collection to which you want to add your submission.

2. Optionally, choose to overwrite the existing objects in the collection, removing all the existing objects and adding new ones, or keep the old resources and add the new ones.

3. Click **Submit** to finalize the submission.

### 4.1.3 Supported File Formats

The following file formats are supported for submission:

| Type                                      | Description                                                                                                                                                                                                                                                                                                                                 |
|-------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **[SBOL](https://sbolstandard.org/datamodel-about/)** | The Synthetic Biology Open Language (SBOL) has been developed as a standard to support the specification and exchange of biological design information in synthetic biology.                                                                                                                          |
| **[GFF3](http://asia.ensembl.org/info/website/upload/gff3.html)** | The GFF (General Feature Format) format consists of one line per feature, each containing 9 columns of data, plus optional track definition lines.                                                                                                                                                     |
| **[FASTA](https://en.wikipedia.org/wiki/FASTA_format)** | In bioinformatics and biochemistry, the FASTA format is a text-based format for representing either nucleotide sequences or amino acid (protein) sequences, in which nucleotides or amino acids are represented using single-letter codes. The format also allows for sequence names and comments to precede the sequences.                     |
| **[zip](https://en.wikipedia.org/wiki/Zip_(file_format))** | ZIP is an archive file format that supports lossless data compression. A ZIP file may contain one or more files or directories that may have been compressed.                                                                                                                                         |

## 4.2 Managing Submissions

1. Navigate to SynBioHub's home page.

2. Click on **Manage Submissions**. On this page, you will see collections broadly divided into two categories: **Public Collections**, which are accessible to all users, and **Private Collections**, which are accessible only to you.

3. You can view your collection by clicking on the collection name.

4. To make your collection public, select the collections you want (using the checkboxes on the left-hand side), then click **Publish**. This will enable other users to view your collection and its contents.

5. To delete your collection, click **Remove**. This will remove the collection as well as the resources contained in that specific collection, such as promoters, activators, modules, components, engineered regions, etc.

## 4.3 Updating Submissions

1. On the Submit page, select the collection you want to submit your design to.

2. Select the design that you want to submit.

3. You may choose to *overwrite the existing objects* in a collection.

4. Then, click **Submit**.

## 4.4 Editing a Submission

To edit your submissions, follow these steps:

1. Go to the submissions page.

2. Select the collection that you want to edit.

3. Edit the **name** and **description** of the record.

4. Add a **source** for your record.

5. Provide a brief description for your record.

6. Under the **Details** section, you can edit the following:

   - **Add Description**: Provide a detailed description for your record.
   - **Add Notes**: Include additional notes explaining your record. You can use basic text formatting options, such as **bold**, *italic*, and underlining. You may also include images and links using HTML tags.
   - **Source**: Enter links referring to the origin of your record.
   - **Citations**: Add PubMed IDs separated by commas to cite research papers.

7. Under the **Other Properties** section, you can add/edit various properties.

8. In the **Attachments** section, you can upload or look up attachments:

   - **Upload Attachments**: Click **Select File(s)** to upload attachments from your machine.
   - **Lookup Attachment**: Provide a URL and name for the attachment, and select its type (e.g., .nib, 2bit, A2M, ABI, etc.).

## 4.5 Add to an Existing Collection

On some record pages, you might find an option titled **Add to an Existing Collection**. Using this option, you can add the record you are currently viewing to an existing collection. Follow these steps:

1. Click **Add to Collection**. This will direct you to a page with a dropdown menu.

2. Select the desired collection from the dropdown menu.

3. Click **Add to Collection** to finalize the addition.
