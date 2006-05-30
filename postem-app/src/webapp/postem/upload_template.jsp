<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://sakaiproject.org/jsf/sakai" prefix="sakai" %>

<f:loadBundle basename="org.sakaiproject.tool.postem.bundle.Messages" var="msgs"/>

<f:view>
	<sakai:view_container title="#{msgs.title_edit}">
		<sakai:view_content>
			<h:form enctype="multipart/form-data">
				
		  	<sakai:tool_bar_message value="#{msgs.file_upload}" />
		  	<sakai:tool_bar_message value="#{msgs.template}" />
		  	
        <sakai:fileInput value="#{PostemTool.fileName}" target="#{PostemTool.targetFileName}"/>
		  	
				<sakai:button_bar>					
					<sakai:button_bar_item
						action="#{PostemTool.processTemplateUpload}"
						value="#{msgs.upload}" />
					<sakai:button_bar_item
						action="#{PostemTool.processUploadCancel}"
						value="#{msgs.cancel}" />
				</sakai:button_bar>		  	

			</h:form>
		</sakai:view_content>
	</sakai:view_container>
</f:view>