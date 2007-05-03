require File.dirname(__FILE__) + '/jiraService.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => RemoteServerInfo,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteServerInfo",
    :schema_element => [
      ["baseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "baseUrl")]],
      ["buildDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "buildDate")]],
      ["buildNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "buildNumber")]],
      ["edition", ["SOAP::SOAPString", XSD::QName.new(nil, "edition")]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteEntity,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteEntity",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemoteUser,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteUser",
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteVersion,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteVersion",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["archived", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "archived")]],
      ["releaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "releaseDate")]],
      ["released", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "released")]],
      ["sequence", ["SOAP::SOAPLong", XSD::QName.new(nil, "sequence")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteComponent,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteComponent",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteCustomFieldValue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteCustomFieldValue",
    :schema_element => [
      ["customfieldId", ["SOAP::SOAPString", XSD::QName.new(nil, "customfieldId")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["values", ["ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteIssue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteIssue",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["affectsVersions", ["ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "affectsVersions")]],
      ["assignee", ["SOAP::SOAPString", XSD::QName.new(nil, "assignee")]],
      ["attachmentNames", ["ArrayOf_xsd_string", XSD::QName.new(nil, "attachmentNames")]],
      ["components", ["ArrayOf_tns1_RemoteComponent", XSD::QName.new(nil, "components")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["customFieldValues", ["ArrayOf_tns1_RemoteCustomFieldValue", XSD::QName.new(nil, "customFieldValues")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duedate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "duedate")]],
      ["environment", ["SOAP::SOAPString", XSD::QName.new(nil, "environment")]],
      ["fixVersions", ["ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "fixVersions")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["reporter", ["SOAP::SOAPString", XSD::QName.new(nil, "reporter")]],
      ["resolution", ["SOAP::SOAPString", XSD::QName.new(nil, "resolution")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]],
      ["votes", ["SOAP::SOAPLong", XSD::QName.new(nil, "votes")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteNamedObject,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteNamedObject",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteScheme,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteScheme",
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemotePermission,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermission",
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["permission", ["SOAP::SOAPLong", XSD::QName.new(nil, "permission")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemotePermissionMapping,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionMapping",
    :schema_element => [
      ["permission", ["RemotePermission", XSD::QName.new(nil, "permission")]],
      ["remoteEntities", ["ArrayOf_tns1_RemoteEntity", XSD::QName.new(nil, "remoteEntities")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemotePermissionScheme,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionScheme",
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["permissionMappings", ["ArrayOf_tns1_RemotePermissionMapping", XSD::QName.new(nil, "permissionMappings")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteProject,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProject",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["issueSecurityScheme", ["RemoteScheme", XSD::QName.new(nil, "issueSecurityScheme")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["lead", ["SOAP::SOAPString", XSD::QName.new(nil, "lead")]],
      ["notificationScheme", ["RemoteScheme", XSD::QName.new(nil, "notificationScheme")]],
      ["permissionScheme", ["RemotePermissionScheme", XSD::QName.new(nil, "permissionScheme")]],
      ["projectUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "projectUrl")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteFieldValue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteFieldValue",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["values", ["ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteConfiguration,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteConfiguration",
    :schema_element => [
      ["allowAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowAttachments")]],
      ["allowExternalUserManagment", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowExternalUserManagment")]],
      ["allowIssueLinking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowIssueLinking")]],
      ["allowSubTasks", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowSubTasks")]],
      ["allowTimeTracking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowTimeTracking")]],
      ["allowUnassignedIssues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowUnassignedIssues")]],
      ["allowVoting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowVoting")]],
      ["allowWatching", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowWatching")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteIssueType,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteIssueType",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemotePriority,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePriority",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["color", ["SOAP::SOAPString", XSD::QName.new(nil, "color")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteResolution,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteResolution",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteStatus,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteStatus",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteProjectRole,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProjectRole",
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteRoleActor,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteRoleActor",
    :schema_element => [
      ["descriptor", ["SOAP::SOAPString", XSD::QName.new(nil, "descriptor")]],
      ["parameter", ["SOAP::SOAPString", XSD::QName.new(nil, "parameter")]],
      ["prettyName", ["SOAP::SOAPString", XSD::QName.new(nil, "prettyName")]],
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteRoleActors,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteRoleActors",
    :schema_element => [
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteProjectRoleActors,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProjectRoleActors",
    :schema_element => [
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]],
      ["project", ["RemoteProject", XSD::QName.new(nil, "project")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteField,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteField",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteFilter,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteFilter",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["xml", ["SOAP::SOAPString", XSD::QName.new(nil, "xml")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteComment,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteComment",
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "body")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevel")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteGroup,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteGroup",
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteAttachment,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteAttachment",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["filesize", ["SOAP::SOAPLong", XSD::QName.new(nil, "filesize")]],
      ["mimetype", ["SOAP::SOAPString", XSD::QName.new(nil, "mimetype")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteException",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemotePermissionException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionException",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemoteValidationException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteValidationException",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemoteAuthenticationException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteAuthenticationException",
    :schema_element => []
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteVersion,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteVersion") }
  )

  EncodedRegistry.set(
    ArrayOf_xsd_string,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteComponent,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteComponent") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteCustomFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteCustomFieldValue") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteNamedObject,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteNamedObject") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteEntity,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteEntity") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemotePermissionMapping,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemotePermissionMapping") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteProject,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteProject") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteFieldValue") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteIssueType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteIssueType") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemotePriority,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemotePriority") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteResolution,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteResolution") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteStatus,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteStatus") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteProjectRole,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteProjectRole") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteUser,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteUser") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteRoleActor,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteRoleActor") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteScheme,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteScheme") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteField,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteField") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteFilter,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteFilter") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteComment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteComment") }
  )

  EncodedRegistry.set(
    ArrayOf_xsd_base64Binary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "byte[]") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteAttachment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteAttachment") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemotePermissionScheme,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemotePermissionScheme") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemotePermission,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemotePermission") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteIssue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteIssue") }
  )

  LiteralRegistry.register(
    :class => RemoteServerInfo,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteServerInfo",
    :schema_qualified => false,
    :schema_element => [
      ["baseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "baseUrl")]],
      ["buildDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "buildDate")]],
      ["buildNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "buildNumber")]],
      ["edition", ["SOAP::SOAPString", XSD::QName.new(nil, "edition")]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteEntity,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteEntity",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoteUser,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteUser",
    :schema_qualified => false,
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteVersion,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteVersion",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["archived", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "archived")]],
      ["releaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "releaseDate")]],
      ["released", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "released")]],
      ["sequence", ["SOAP::SOAPLong", XSD::QName.new(nil, "sequence")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteComponent,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteComponent",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteCustomFieldValue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteCustomFieldValue",
    :schema_qualified => false,
    :schema_element => [
      ["customfieldId", ["SOAP::SOAPString", XSD::QName.new(nil, "customfieldId")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["values", ["ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteIssue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteIssue",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["affectsVersions", ["ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "affectsVersions")]],
      ["assignee", ["SOAP::SOAPString", XSD::QName.new(nil, "assignee")]],
      ["attachmentNames", ["ArrayOf_xsd_string", XSD::QName.new(nil, "attachmentNames")]],
      ["components", ["ArrayOf_tns1_RemoteComponent", XSD::QName.new(nil, "components")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["customFieldValues", ["ArrayOf_tns1_RemoteCustomFieldValue", XSD::QName.new(nil, "customFieldValues")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duedate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "duedate")]],
      ["environment", ["SOAP::SOAPString", XSD::QName.new(nil, "environment")]],
      ["fixVersions", ["ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "fixVersions")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["reporter", ["SOAP::SOAPString", XSD::QName.new(nil, "reporter")]],
      ["resolution", ["SOAP::SOAPString", XSD::QName.new(nil, "resolution")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]],
      ["votes", ["SOAP::SOAPLong", XSD::QName.new(nil, "votes")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteNamedObject,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteNamedObject",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteScheme,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteScheme",
    :schema_qualified => false,
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemotePermission,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermission",
    :schema_qualified => false,
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["permission", ["SOAP::SOAPLong", XSD::QName.new(nil, "permission")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemotePermissionMapping,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionMapping",
    :schema_qualified => false,
    :schema_element => [
      ["permission", ["RemotePermission", XSD::QName.new(nil, "permission")]],
      ["remoteEntities", ["ArrayOf_tns1_RemoteEntity", XSD::QName.new(nil, "remoteEntities")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemotePermissionScheme,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionScheme",
    :schema_qualified => false,
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["permissionMappings", ["ArrayOf_tns1_RemotePermissionMapping", XSD::QName.new(nil, "permissionMappings")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteProject,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProject",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["issueSecurityScheme", ["RemoteScheme", XSD::QName.new(nil, "issueSecurityScheme")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["lead", ["SOAP::SOAPString", XSD::QName.new(nil, "lead")]],
      ["notificationScheme", ["RemoteScheme", XSD::QName.new(nil, "notificationScheme")]],
      ["permissionScheme", ["RemotePermissionScheme", XSD::QName.new(nil, "permissionScheme")]],
      ["projectUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "projectUrl")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteFieldValue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteFieldValue",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["values", ["ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteConfiguration,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteConfiguration",
    :schema_qualified => false,
    :schema_element => [
      ["allowAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowAttachments")]],
      ["allowExternalUserManagment", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowExternalUserManagment")]],
      ["allowIssueLinking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowIssueLinking")]],
      ["allowSubTasks", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowSubTasks")]],
      ["allowTimeTracking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowTimeTracking")]],
      ["allowUnassignedIssues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowUnassignedIssues")]],
      ["allowVoting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowVoting")]],
      ["allowWatching", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowWatching")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteIssueType,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteIssueType",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemotePriority,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePriority",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["color", ["SOAP::SOAPString", XSD::QName.new(nil, "color")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteResolution,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteResolution",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteStatus,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteStatus",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteProjectRole,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProjectRole",
    :schema_qualified => false,
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteRoleActor,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteRoleActor",
    :schema_qualified => false,
    :schema_element => [
      ["descriptor", ["SOAP::SOAPString", XSD::QName.new(nil, "descriptor")]],
      ["parameter", ["SOAP::SOAPString", XSD::QName.new(nil, "parameter")]],
      ["prettyName", ["SOAP::SOAPString", XSD::QName.new(nil, "prettyName")]],
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteRoleActors,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteRoleActors",
    :schema_qualified => false,
    :schema_element => [
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteProjectRoleActors,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProjectRoleActors",
    :schema_qualified => false,
    :schema_element => [
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]],
      ["project", ["RemoteProject", XSD::QName.new(nil, "project")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteField,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteField",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteFilter,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteFilter",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["xml", ["SOAP::SOAPString", XSD::QName.new(nil, "xml")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteComment,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteComment",
    :schema_qualified => false,
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "body")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevel")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteGroup,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteGroup",
    :schema_qualified => false,
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteAttachment,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteAttachment",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["filesize", ["SOAP::SOAPLong", XSD::QName.new(nil, "filesize")]],
      ["mimetype", ["SOAP::SOAPString", XSD::QName.new(nil, "mimetype")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteException",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemotePermissionException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionException",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoteValidationException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteValidationException",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoteAuthenticationException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteAuthenticationException",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteVersion,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteVersion",
    :schema_element => [
      ["item", ["RemoteVersion", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_xsd_string,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_xsd_string",
    :schema_element => [
      ["item", ["String", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteComponent,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteComponent",
    :schema_element => [
      ["item", ["RemoteComponent", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteCustomFieldValue,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteCustomFieldValue",
    :schema_element => [
      ["item", ["RemoteCustomFieldValue", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteNamedObject,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteNamedObject",
    :schema_element => [
      ["item", ["RemoteNamedObject", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteEntity,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteEntity",
    :schema_element => [
      ["item", ["RemoteEntity", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemotePermissionMapping,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemotePermissionMapping",
    :schema_element => [
      ["item", ["RemotePermissionMapping", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteProject,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteProject",
    :schema_element => [
      ["item", ["RemoteProject", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteFieldValue,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteFieldValue",
    :schema_element => [
      ["item", ["RemoteFieldValue", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteIssueType,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteIssueType",
    :schema_element => [
      ["item", ["RemoteIssueType", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemotePriority,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemotePriority",
    :schema_element => [
      ["item", ["RemotePriority", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteResolution,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteResolution",
    :schema_element => [
      ["item", ["RemoteResolution", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteStatus,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteStatus",
    :schema_element => [
      ["item", ["RemoteStatus", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteProjectRole,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteProjectRole",
    :schema_element => [
      ["item", ["RemoteProjectRole", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteUser,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteUser",
    :schema_element => [
      ["item", ["RemoteUser", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteRoleActor,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteRoleActor",
    :schema_element => [
      ["item", ["RemoteRoleActor", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteScheme,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteScheme",
    :schema_element => [
      ["item", ["RemoteScheme", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteField,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteField",
    :schema_element => [
      ["item", ["RemoteField", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteFilter,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteFilter",
    :schema_element => [
      ["item", ["RemoteFilter", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteComment,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteComment",
    :schema_element => [
      ["item", ["RemoteComment", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_xsd_base64Binary,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_xsd_base64Binary",
    :schema_element => [
      ["item", ["Byte", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteAttachment,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteAttachment",
    :schema_element => [
      ["item", ["RemoteAttachment", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemotePermissionScheme,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemotePermissionScheme",
    :schema_element => [
      ["item", ["RemotePermissionScheme", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemotePermission,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemotePermission",
    :schema_element => [
      ["item", ["RemotePermission", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_tns1_RemoteIssue,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteIssue",
    :schema_element => [
      ["item", ["RemoteIssue", XSD::QName.new(nil, "item")]]
    ]
  )
end
