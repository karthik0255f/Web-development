<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>My Book Collection</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        margin: 0;
                        padding: 20px;
                    }
                    table {
                        border-collapse: collapse;
                        width: 80%;
                        margin: auto;
                        background-color: #ffffff;
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 12px;
                        text-align: center;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                        font-weight: bold;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                    tr:hover {
                        background-color: #f1f1f1;
                    }
                    h2 {
                        text-align: center;
                        color: #333;
                    }
                </style>
            </head>
            <body>
                <h2>My BOOK Collection</h2>
                <table>
                    <tr>
                        <th>BOOK NAME</th>
                        <th>Author</th>
                        <th>ISBN</th>
                        <th>Publisher</th>
                        <th>Edition</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="BOOKS/INFORMATION/Book">
                        <tr>
                            <td><xsl:value-of select="book_name" /></td>
                            <td><xsl:value-of select="Author_name" /></td>
                            <td><xsl:value-of select="ISBN_number" /></td>
                            <td><xsl:value-of select="publisher" /></td>
                            <td><xsl:value-of select="Edition" /></td>
                            <td><xsl:value-of select="Price" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
