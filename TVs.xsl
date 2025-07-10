<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>TV Information</title>
                <style>
                    table {
                        width: 80%;
                        border-collapse: collapse;
                        margin: 20px auto;
                        font-family: Arial, sans-serif;
                    }
                    th {
                        background-color: grey;
                        color: white;
                        padding: 12px;
                        text-align: left;
                    }
                    td {
                        padding: 10px;
                        text-align: left;
                        border-bottom: 1px solid #ddd;
                    }
                    .brand {
                        color: blue;
                        font-weight: bold;
                        text-transform: uppercase;
                    }
                    .size {
                        color: green;
                    }
                    .serial {
                        color: purple;
                    }
                    .year {
                        color: orange;
                    }
                    .color {
                        color: red;
                    }
                    .price {
                        color: brown;
                    }
                    tr:hover {
                        background-color: #f5f5f5;
                    }
                </style>
            </head>
            <body>
                <h2 style="text-align: center;">TV Information</h2>
                <table border="1">
                    <tr>
                        <th>Brand</th>
                        <th>Size</th>
                        <th>Serial Number</th>
                        <th>Year of Model</th>
                        <th>Color</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="TVs/TV">
                        <tr>
                            <td class="brand"><xsl:value-of select="Brand"/></td>
                            <td class="size"><xsl:value-of select="Size"/></td>
                            <td class="serial"><xsl:value-of select="SerialNumber"/></td>
                            <td class="year"><xsl:value-of select="YearOfModel"/></td>
                            <td class="color"><xsl:value-of select="Color"/></td>
                            <td class="price">$<xsl:value-of select="Price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>