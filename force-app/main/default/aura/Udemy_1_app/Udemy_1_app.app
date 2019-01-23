<aura:application extends="force:slds">
    <aura:attribute name="OpenTheForm"  type="boolean" default="false"/>
    <aura:attribute name="ButtonLabel" type="String" default="Open The Form" />
    <lightning:button label="{!v.ButtonLabel}" onclick="{!c.OpenForm}"/>
   
    
    <aura:if isTrue="{!v.OpenTheForm}">
    <c:Udemy_1 />
     </aura:if>
    
</aura:application>