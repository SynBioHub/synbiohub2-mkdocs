---
weight: 10
---

# Searching for Information

There are a variety of ways to search for information in SynBioHub, such as using keywords, sequences, advanced searches, and SPARQL queries. They are explained in detail as follows:

### 1.1 Keyword Search

To search amongst various records, follow these steps:

1. Navigate to SynBioHub's home page.

2. In the search box, enter the keywords for the record you want to search for and click on the search button.

3. Subsequently, you shall be directed to a list of records matching the keywords that you've entered. For each record, the first thing that is displayed is the name. Next to the name, the display ID, description, type of the record, and privacy shall be displayed. The description column contains a brief description provided by the owner of that particular record. On the right-hand side, there is an indicator displaying whether it is a **public**, **private**, or a **remote** record. The privacy labels indicate:
    - Private: The record is available only to specific users through a private repository.
    - Public: The record is accessible to all SynBioHub users.
    - Remote: The record is publicly available but hosted on another instance of SynBioHub.

4. If you see the record you want, you can select it. Else, you can select next or any of the other page numbers to navigate to the other pages to look for the record you desire amongst other records.

5. On this page, you are also able to see other search options, such as sequence, advanced, or SPARQL search, which are described in detail in the upcoming sections.

### 1.2 Sequence Search

On the search results page, there is a button labeled **sequence search**. Clicking on that button will direct you to a page containing a list of sequence search options. To search using a sequence, you can provide the values for the options, as described in the table below:

| Option Name         |              Description     |
|---------------------|------------------------------|
| Enter Sequence      | Enter the sequence or upload a **[FASTA](https://en.wikipedia.org/wiki/FASTA_format)/[FASTQ](https://en.wikipedia.org/wiki/FASTQ_format)** file by clicking the choose file option just below the box. This shall search only for exact matches of the sequence. Your entry must be the first key/value pair.   |
| Search Method       | You can choose the perspective of your search. You can perform a **global** search or an **exact** search. The exact search shall display those records which are an exact match to the sequences that you've entered, and the global search will display those results which have even the smallest of similarities to the sequence that you've entered.  |
|  Number of Results                   | You may customize the number of results, the value for which must not exceed 10,000. This translates into the maximum number of hits to accept before stopping the search. Kindly note that the higher the value, the longer the runtime.  |
| Minimum Sequence Length |You need to enter the minimum sequence length. This value specifies the minimum length of the sequence which you want to search for. Values for this parameter should not exceed 100,000. |
| Maximum Sequence Length|You need to enter the maximum sequence length. This value specifies the maximum length of the sequence which you want to search for. Values for this parameter should not exceed 100,000. |
| # of failed hits before stopping|Then, you need to enter the maximum number of non-matching target sequences that are to be considered before the search is halted. This option works in pair with the flag above. The search process sorts the target sequences by decreasing number of k-mers they have in common with the query sequence, using that information as a proxy for sequence similarity. After pairwise alignments, if none of the first x examined target sequences pass the acceptance criteria, the search process stops for that query (no hit). If this flag is set to a higher value, more target sequences are considered. If the flag above and this flag are both set to 0, the complete database is searched. |
| Percent Match | Then, we have the *percentage match*, which has a value between 0 and 1. This is the value of pairwise identity that must match with the sequence; otherwise, the sequence is rejected. |
| Pairwise Identity Definition | You may select the value for this attribute from the following options: 1) **Default**: Edit distance excluding the terminal gaps,   2) **CD-HIT definition**: Considers the following ratio: (matching columns) / (shortest sequence length),   3) **Marine Biological Lab definition**: counts each gap opening (internal or terminal) as a single mismatch, whether or not the gap was extended: 1.0 - [(mismatches + gap openings)/(longest sequence length)],   4) **BLAST Definition**: equivalent to edit distance for global pairwise alignments.    |

After filling up the desired options, press the **search** button to get the search results.

### 1.3 Advanced Search

On the search results page, there is a column on the left-hand side that contains a list of advanced search options. To search using advanced parameters, you can provide the values for the option as described in the table below. The records that will be displayed will match all of the criteria that you will fill in. Kindly note that you **don't** need to fill in all of the options. The options are as follows:

| Option Name   | Description   |
|---------------|---------------|
|  Object Type |  The type of the record you want to search for, i.e., a collection, design, activity, etc. |
|  Creator | The username of the record's creator.  |
|  Created After and Created Before  | The timeframe in which the record was created. Make sure to enter the dates in the **YYYY-MM-DD** format.  |
| Modified After Modified Before  | The timeframe in which the record was last modified. Make sure to enter the dates in the **YYYY-MM-DD** format. |
| ID/Name/Description | Enter the ID, name, or description of the record which you want to search for. |
| Type | Select the *type* of the record from the following available options in the dropdown menu, for example: No filter, biopax:Complex, biopax:DnaRegion, biopax:Protein, so:circular, etc. |
| Role | Select the **role** of the record from this dropdown menu. It contains various subcategories of **[igem](https://igem.org/Main_Page)** or **[SO](http://www.sequenceontology.org/miso/current_release/term/SO:0000316)**. |
| Collections| You may select any number of collections based on your convenience. To select a collection, click on the value attribute of the collection and select it from the dropdown menu. |
| Customizable Filters | You may apply customized filters for the design you want to search for. For that purpose, click **add filter**, and a dropdown menu will appear having various parameters for filtering. These parameters are basically the properties for filtering the records. Select the property that you want your record to be filtered by, and then click on filter. This shall reload the page, and then select the value of the filter from the dropdown on the right-hand side. You may provide as many as 5 customized filters, which are optional. |

After selecting the desired options for performing a search using advanced parameters, click **search**. This will return the records after comprehending all the details that you've entered.

- Just below, there is an option to create a **new collection** as well. If you wish to create a collection from your search results, you need to fill in the following items:

  |Option Name |   Description |
  |------------|---------------|
  | Collection Name| This is the name string that will be assigned to the submission. |
  | Collection Description| This is the description string that briefly explains your submission. |
  | Collection ID | This is a user-defined alphanumeric string identifier for the submission, and it should contain alphanumeric and underscore characters only. |
  | Collection Version| This is the alphanumeric string which is associated with the submission. |

After you've filled in all the available options, click on **create collection**. This will return the search results to you in the form of a private collection.

### 1.4 SPARQL Search

On the search results page, there is a button labeled SPARQL. Clicking on that button will direct you to the SPARQL page. Since **[SPARQL is a query language](https://www.w3.org/TR/sparql11-query/)**, it will query SynBioHub's databases for the designs that you are looking for. On the SPARQL page, you can select the graph that is from **private** or **public**. Here, **public** means searching amongst the public submissions that can be viewed by all, and **private** means the ones that are your personal collections.

In the box provided just below the graphs dropdown, enter the SPARQL query. Following is an example that selects all SBOL components that have an SO role type. It returns the part title, part role, part display ID, part URI, and the total number of parts returned by the query. If you want to search for other types of designs, just replace SBOL with your preferred type:

```sparql
# Some common prefixes are also provided below, which you can use in your SPARQL queries.
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX dcterms: <http://purl.org/dc/terms/>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX sbh: <http://wiki.synbiohub.org/wiki/Terms/synbiohub#>
PREFIX prov: <http://www.w3.org/ns/prov#>
PREFIX sbol: <http://sbols.org/v2#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX purl: <http://purl.obolibrary.org/obo/>

SELECT
    ?def # directs you to the design for which you are looking for 
    ?displayId # This statement displays the ID of the design
    ?title # displays the title of the design
    (COUNT(?def) as ?count) # displays the count parameter for the design
    ?role # displays the role of the design    
WHERE { 
    ?s sbol:component ?comp # Searching for **sbol** components
    ?comp sbol:definition ?def # provides the link to that component
    FILTER (REGEX(?role, 'http://identifiers.org/so/SO:')) 
    OPTIONAL {?def sbol:role ?role} # Defines the role
    OPTIONAL {?def sbol:displayId ?displayId} # gives the ID of that particular record
    OPTIONAL {?def dcterms:title ?title} 
}
```

After writing your SPARQL query, just click **submit query**. After you click on **submit query**, the results of your query shall be displayed below the query box.

### 1.5 Searching on a Record Page

On a record page, under the search button, you may find the following options:

#### 1.5.1 Searching for Uses

This returns other records that refer to this particular record which you are currently viewing. For example, if this is an engineered region, then it will return all other components that use this as a subcomponent.

#### 1.5.2 Search for Twin Components

If the record being viewed is a component, then you will also have the option to search for **twin** components. A twin is another component that has the same sequence as the object being viewed. So, selecting this option will return all the records having the same sequence as the object that you would be currently viewing.

#### 1.5.3 Search for Similar Components

If the record being viewed is a component and SBOLExplorer is being run on that particular SynBioHub instance, then you will also have the option to search for **similar** components. A component is similar when the sequences are close enough that SBOLExplorer has clustered those 2 components together into the same cluster.

