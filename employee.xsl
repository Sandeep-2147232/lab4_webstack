<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
 <meta charset="UTF-8"/>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Employee Management System</title>
</head>
<body>
  <h2>Employee Management</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
    <th style="text-align:left">ID</th>
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Age</th>
      <th style="text-align:left">Salary</th>
      <th style="text-align:left">Email</th>
      <th style="text-align:left">Mobnum</th>
      <th style="text-align:left">Designation</th>
      <th style="text-align:left">Promotion</th>
    </tr>
    <xsl:for-each select="Company/employee">
    <tr>
      <td><xsl:value-of select="Emp_ID"/></td>
      <td><xsl:value-of select="Emp_name"/></td>
      <td><xsl:value-of select="Emp_age"/></td>
      <td><xsl:value-of select="Emp_salary"/></td>
      <td><xsl:value-of select="Emp_emailid"/></td>
      <td><xsl:value-of select="Emp_Phonenum"/></td>
      <td><xsl:value-of select="Emp_designation"/></td>
      <xsl:if test="Emp_age &gt; 50">
                            <td>Associate Project Manager</td>
                        </xsl:if>
                        <xsl:if test="Emp_age &gt; 41">
                            <td>Team Leader</td>
                        </xsl:if>
                        <xsl:if test="Emp_age &lt; 40">
                            <td>Developer</td>
                        </xsl:if>
    </tr>
    </xsl:for-each>
  </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>

