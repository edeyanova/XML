<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
      <html>
        <head>
          <title>BlankApplying</title>
        </head>
        <body>
          <h2>Applicants:</h2>
          <table border="1px">
            <tr bgcolor="#9acd32">
              <th>number</th>
            </tr>
            <tr>
              <xsl:for-each select="ApplicationForm/Applicants/applicant">
                <td>
                  <xsl:value-of select="@number"/>
                </td>               
              </xsl:for-each>
            </tr>
          </table>
          <br/>
          <table border="1px">
            <tr bgcolor="#9acd32">
              <th>position</th>


            </tr>
            <tr>
              <xsl:for-each select="ApplicationForm/Applicants/applicant/PositionAppliedFor">
                <td>
                  <xsl:value-of select="@position"/>
                </td>

              </xsl:for-each>
            </tr>

          </table>
          <br/>
          <table border="1px">
            <tr bgcolor="#9acd32">
              <th>FirstName</th>
              <th>Surname</th>
              <th>DateOfBirth</th>
              <th>Email</th>
              <th>TelephoneNumber</th>

            </tr>
            <tr>
              <xsl:for-each select="ApplicationForm/Applicants/applicant/PersonalDetails">
                <td>
                  <xsl:value-of select="@FirstName"/>
                </td>
                <td>
                  <xsl:value-of select="@Surname"/>
                </td>
                <td>
                  <xsl:value-of select="@DateOfBirth"/>
                </td>
                <td>
                  <xsl:value-of select="@Email"/>
                </td>
                <td>
                  <xsl:value-of select="@TelephoneNumber"/>
                </td>




              </xsl:for-each>
            </tr>

          </table>
          <br/>
          <table border="1px">
            <tr bgcolor="#9acd32">
              <th>UniversityDegree</th>


            </tr>
            <tr>
              <xsl:for-each select="ApplicationForm/Applicants/applicant/Education">
                <td>
                  <xsl:value-of select="@UniversityDegree"/>
                </td>

              </xsl:for-each>
            </tr>

          </table>
          <br/>
          <table border="1px">
            <tr bgcolor="#9acd32">
              <th>skills</th>


            </tr>
            <tr>
              <xsl:for-each select="ApplicationForm/Applicants/applicant/PersonalSkills">
                <td>
                  <xsl:value-of select="@skills"/>
                </td>

              </xsl:for-each>
            </tr>

          </table>
          <br/>
          <table border="1px">
            <tr bgcolor="#9acd32">
              <th>history</th>


            </tr>
            <tr>
              <xsl:for-each select="ApplicationForm/Applicants/applicant/EmploymentHistory">
                <td>
                  <xsl:value-of select="@history"/>
                </td>

              </xsl:for-each>
            </tr>

          </table>
          <br/>
          <table border="1px">
            <tr bgcolor="#9acd32">
              <th>activities</th>
              <th>interests</th>


            </tr>
            <tr>
              <xsl:for-each select="ApplicationForm/Applicants/applicant/ActivitiesAndInterests">
                <td>
                  <xsl:value-of select="@activities"/>
                </td>
                <td>
                  <xsl:value-of select="@interests"/>
                </td>


              </xsl:for-each>
            </tr>

          </table>
          <br/>
          <table border="1px">
            <tr bgcolor="#9acd32">
              <th>reasons</th>
              


            </tr>
            <tr>
              <xsl:for-each select="ApplicationForm/Applicants/applicant/ReasonsForApplying">
                <td>
                  <xsl:value-of select="@reasons"/>
                </td>
               


              </xsl:for-each>
            </tr>

          </table>
        </body>
      </html>
        <!--<xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>-->
    </xsl:template>
</xsl:stylesheet>
