
<%! import annotation.* %> 
<%! import bio.* %>  
<%! import com.recomdata.util.* %> 
  
<g:form name="editMetadataForm">
<g:hiddenField name="id" value="${folder?.id}" />
<g:set var="objectUid" value="${folder?.uniqueId}"/>

<div id="displayErrors">
<g:hasErrors bean="${folder}">
  <div class="errors">
      <g:renderErrors bean="${folder}" as="list" />
  </div>
</g:hasErrors>
</div>

<table class="detail" height="300px">
	<tbody>
		<tr>
			<td valign="top" align="right" class="name">Name&nbsp;<g:requiredIndicator/>:</td>
			<td valign="top" align="left" name="folderName">${folder?.folderName}</td>            
		</tr>
	    <tr>
			<td valign="top" align="right" class="name">Description&nbsp;<g:requiredIndicator/>:</td>
			<td valign="top" align="left"><g:textArea size="100" cols="74" rows="10" name="description" value="${folder?.description}" /></td>
		</tr>
		
		<g:render template="metaData" model="[templateType: templateType, title:title, bioDataObject:bioDataObject, folder:folder, amTagTemplate: amTagTemplate, metaDataTagItems: metaDataTagItems]"/>
	</tbody>
</table>    

<br/>
<div align="center">
    <span id="savemetadatabutton" class="greybutton">Save</span>
    <span id="cancelmetadatabutton" class="greybutton buttonicon close">Cancel</span>
</div>
</g:form>