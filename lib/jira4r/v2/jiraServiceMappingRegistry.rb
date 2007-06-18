require File.dirname(__FILE__) + '/jiraService.rb'
require 'soap/mapping'

module Jira

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => Jira::RemoteServerInfo,
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
    :class => Jira::RemoteEntity,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteEntity",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Jira::RemoteUser,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteUser",
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteScheme,
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
    :class => Jira::RemotePermission,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermission",
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["permission", ["SOAP::SOAPLong", XSD::QName.new(nil, "permission")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemotePermissionMapping,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionMapping",
    :schema_element => [
      ["permission", ["Jira::RemotePermission", XSD::QName.new(nil, "permission")]],
      ["remoteEntities", ["Jira::ArrayOf_tns1_RemoteEntity", XSD::QName.new(nil, "remoteEntities")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemotePermissionScheme,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionScheme",
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["permissionMappings", ["Jira::ArrayOf_tns1_RemotePermissionMapping", XSD::QName.new(nil, "permissionMappings")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteProject,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProject",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["issueSecurityScheme", ["Jira::RemoteScheme", XSD::QName.new(nil, "issueSecurityScheme")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["lead", ["SOAP::SOAPString", XSD::QName.new(nil, "lead")]],
      ["notificationScheme", ["Jira::RemoteScheme", XSD::QName.new(nil, "notificationScheme")]],
      ["permissionScheme", ["Jira::RemotePermissionScheme", XSD::QName.new(nil, "permissionScheme")]],
      ["projectUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "projectUrl")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteVersion,
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
    :class => Jira::RemoteComponent,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteComponent",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteCustomFieldValue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteCustomFieldValue",
    :schema_element => [
      ["customfieldId", ["SOAP::SOAPString", XSD::QName.new(nil, "customfieldId")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["values", ["Jira::ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteIssue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteIssue",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["affectsVersions", ["Jira::ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "affectsVersions")]],
      ["assignee", ["SOAP::SOAPString", XSD::QName.new(nil, "assignee")]],
      ["attachmentNames", ["Jira::ArrayOf_xsd_string", XSD::QName.new(nil, "attachmentNames")]],
      ["components", ["Jira::ArrayOf_tns1_RemoteComponent", XSD::QName.new(nil, "components")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["customFieldValues", ["Jira::ArrayOf_tns1_RemoteCustomFieldValue", XSD::QName.new(nil, "customFieldValues")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duedate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "duedate")]],
      ["environment", ["SOAP::SOAPString", XSD::QName.new(nil, "environment")]],
      ["fixVersions", ["Jira::ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "fixVersions")]],
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
    :class => Jira::RemoteNamedObject,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteNamedObject",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteFieldValue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteFieldValue",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["values", ["Jira::ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteConfiguration,
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
    :class => Jira::RemoteIssueType,
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
    :class => Jira::RemotePriority,
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
    :class => Jira::RemoteResolution,
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
    :class => Jira::RemoteStatus,
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
    :class => Jira::RemoteProjectRole,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProjectRole",
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteRoleActor,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteRoleActor",
    :schema_element => [
      ["descriptor", ["SOAP::SOAPString", XSD::QName.new(nil, "descriptor")]],
      ["parameter", ["SOAP::SOAPString", XSD::QName.new(nil, "parameter")]],
      ["prettyName", ["SOAP::SOAPString", XSD::QName.new(nil, "prettyName")]],
      ["projectRole", ["Jira::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["users", ["Jira::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteRoleActors,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteRoleActors",
    :schema_element => [
      ["projectRole", ["Jira::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["Jira::ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["Jira::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteProjectRoleActors,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProjectRoleActors",
    :schema_element => [
      ["projectRole", ["Jira::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["Jira::ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["Jira::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]],
      ["project", ["Jira::RemoteProject", XSD::QName.new(nil, "project")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteField,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteField",
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteFilter,
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
    :class => Jira::RemoteComment,
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
    :class => Jira::RemoteGroup,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteGroup",
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["users", ["Jira::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => Jira::RemoteAttachment,
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
    :class => Jira::RemoteException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteException",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Jira::RemoteValidationException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteValidationException",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Jira::RemoteAuthenticationException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteAuthenticationException",
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Jira::RemotePermissionException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionException",
    :schema_element => []
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteEntity,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteEntity") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemotePermissionMapping,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemotePermissionMapping") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteVersion,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteVersion") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_xsd_string,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteComponent,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteComponent") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteCustomFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteCustomFieldValue") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteNamedObject,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteNamedObject") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteProject,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteProject") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteFieldValue") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteIssueType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteIssueType") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemotePriority,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemotePriority") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteResolution,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteResolution") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteStatus,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteStatus") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteProjectRole,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteProjectRole") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteUser,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteUser") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteRoleActor,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteRoleActor") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteScheme,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteScheme") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteField,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteField") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteFilter,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteFilter") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteComment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteComment") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_xsd_base64Binary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "byte[]") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteAttachment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteAttachment") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemotePermissionScheme,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemotePermissionScheme") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemotePermission,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemotePermission") }
  )

  EncodedRegistry.set(
    Jira::ArrayOf_tns1_RemoteIssue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://beans.soap.rpc.jira.atlassian.com", "RemoteIssue") }
  )

  LiteralRegistry.register(
    :class => Jira::RemoteServerInfo,
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
    :class => Jira::RemoteEntity,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteEntity",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Jira::RemoteUser,
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
    :class => Jira::RemoteScheme,
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
    :class => Jira::RemotePermission,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermission",
    :schema_qualified => false,
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["permission", ["SOAP::SOAPLong", XSD::QName.new(nil, "permission")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemotePermissionMapping,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionMapping",
    :schema_qualified => false,
    :schema_element => [
      ["permission", ["Jira::RemotePermission", XSD::QName.new(nil, "permission")]],
      ["remoteEntities", ["Jira::ArrayOf_tns1_RemoteEntity", XSD::QName.new(nil, "remoteEntities")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemotePermissionScheme,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionScheme",
    :schema_qualified => false,
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["permissionMappings", ["Jira::ArrayOf_tns1_RemotePermissionMapping", XSD::QName.new(nil, "permissionMappings")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteProject,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProject",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["issueSecurityScheme", ["Jira::RemoteScheme", XSD::QName.new(nil, "issueSecurityScheme")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["lead", ["SOAP::SOAPString", XSD::QName.new(nil, "lead")]],
      ["notificationScheme", ["Jira::RemoteScheme", XSD::QName.new(nil, "notificationScheme")]],
      ["permissionScheme", ["Jira::RemotePermissionScheme", XSD::QName.new(nil, "permissionScheme")]],
      ["projectUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "projectUrl")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteVersion,
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
    :class => Jira::RemoteComponent,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteComponent",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteCustomFieldValue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteCustomFieldValue",
    :schema_qualified => false,
    :schema_element => [
      ["customfieldId", ["SOAP::SOAPString", XSD::QName.new(nil, "customfieldId")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["values", ["Jira::ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteIssue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteIssue",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["affectsVersions", ["Jira::ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "affectsVersions")]],
      ["assignee", ["SOAP::SOAPString", XSD::QName.new(nil, "assignee")]],
      ["attachmentNames", ["Jira::ArrayOf_xsd_string", XSD::QName.new(nil, "attachmentNames")]],
      ["components", ["Jira::ArrayOf_tns1_RemoteComponent", XSD::QName.new(nil, "components")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["customFieldValues", ["Jira::ArrayOf_tns1_RemoteCustomFieldValue", XSD::QName.new(nil, "customFieldValues")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duedate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "duedate")]],
      ["environment", ["SOAP::SOAPString", XSD::QName.new(nil, "environment")]],
      ["fixVersions", ["Jira::ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "fixVersions")]],
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
    :class => Jira::RemoteNamedObject,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteNamedObject",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteFieldValue,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteFieldValue",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["values", ["Jira::ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteConfiguration,
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
    :class => Jira::RemoteIssueType,
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
    :class => Jira::RemotePriority,
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
    :class => Jira::RemoteResolution,
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
    :class => Jira::RemoteStatus,
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
    :class => Jira::RemoteProjectRole,
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
    :class => Jira::RemoteRoleActor,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteRoleActor",
    :schema_qualified => false,
    :schema_element => [
      ["descriptor", ["SOAP::SOAPString", XSD::QName.new(nil, "descriptor")]],
      ["parameter", ["SOAP::SOAPString", XSD::QName.new(nil, "parameter")]],
      ["prettyName", ["SOAP::SOAPString", XSD::QName.new(nil, "prettyName")]],
      ["projectRole", ["Jira::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["users", ["Jira::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteRoleActors,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteRoleActors",
    :schema_qualified => false,
    :schema_element => [
      ["projectRole", ["Jira::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["Jira::ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["Jira::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteProjectRoleActors,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteProjectRoleActors",
    :schema_qualified => false,
    :schema_element => [
      ["projectRole", ["Jira::RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["Jira::ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["Jira::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]],
      ["project", ["Jira::RemoteProject", XSD::QName.new(nil, "project")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteField,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteField",
    :schema_qualified => false,
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteFilter,
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
    :class => Jira::RemoteComment,
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
    :class => Jira::RemoteGroup,
    :schema_ns => "http://beans.soap.rpc.jira.atlassian.com",
    :schema_type => "RemoteGroup",
    :schema_qualified => false,
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["users", ["Jira::ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::RemoteAttachment,
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
    :class => Jira::RemoteException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteException",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Jira::RemoteValidationException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteValidationException",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Jira::RemoteAuthenticationException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemoteAuthenticationException",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Jira::RemotePermissionException,
    :schema_ns => "http://exception.rpc.jira.atlassian.com",
    :schema_type => "RemotePermissionException",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteEntity,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteEntity",
    :schema_element => [
      ["item", ["Jira::RemoteEntity", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemotePermissionMapping,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemotePermissionMapping",
    :schema_element => [
      ["item", ["Jira::RemotePermissionMapping", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteVersion,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteVersion",
    :schema_element => [
      ["item", ["Jira::RemoteVersion", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_xsd_string,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_xsd_string",
    :schema_element => [
      ["item", ["String", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteComponent,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteComponent",
    :schema_element => [
      ["item", ["Jira::RemoteComponent", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteCustomFieldValue,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteCustomFieldValue",
    :schema_element => [
      ["item", ["Jira::RemoteCustomFieldValue", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteNamedObject,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteNamedObject",
    :schema_element => [
      ["item", ["Jira::RemoteNamedObject", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteProject,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteProject",
    :schema_element => [
      ["item", ["Jira::RemoteProject", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteFieldValue,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteFieldValue",
    :schema_element => [
      ["item", ["Jira::RemoteFieldValue", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteIssueType,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteIssueType",
    :schema_element => [
      ["item", ["Jira::RemoteIssueType", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemotePriority,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemotePriority",
    :schema_element => [
      ["item", ["Jira::RemotePriority", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteResolution,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteResolution",
    :schema_element => [
      ["item", ["Jira::RemoteResolution", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteStatus,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteStatus",
    :schema_element => [
      ["item", ["Jira::RemoteStatus", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteProjectRole,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteProjectRole",
    :schema_element => [
      ["item", ["Jira::RemoteProjectRole", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteUser,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteUser",
    :schema_element => [
      ["item", ["Jira::RemoteUser", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteRoleActor,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteRoleActor",
    :schema_element => [
      ["item", ["Jira::RemoteRoleActor", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteScheme,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteScheme",
    :schema_element => [
      ["item", ["Jira::RemoteScheme", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteField,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteField",
    :schema_element => [
      ["item", ["Jira::RemoteField", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteFilter,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteFilter",
    :schema_element => [
      ["item", ["Jira::RemoteFilter", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteComment,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteComment",
    :schema_element => [
      ["item", ["Jira::RemoteComment", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_xsd_base64Binary,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_xsd_base64Binary",
    :schema_element => [
      ["item", ["Jira::Byte", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteAttachment,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteAttachment",
    :schema_element => [
      ["item", ["Jira::RemoteAttachment", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemotePermissionScheme,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemotePermissionScheme",
    :schema_element => [
      ["item", ["Jira::RemotePermissionScheme", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemotePermission,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemotePermission",
    :schema_element => [
      ["item", ["Jira::RemotePermission", XSD::QName.new(nil, "item")]]
    ]
  )

  LiteralRegistry.register(
    :class => Jira::ArrayOf_tns1_RemoteIssue,
    :schema_ns => "http://localhost:8080/rpc/soap/jirasoapservice-v2",
    :schema_type => "ArrayOf_tns1_RemoteIssue",
    :schema_element => [
      ["item", ["Jira::RemoteIssue", XSD::QName.new(nil, "item")]]
    ]
  )
end

end
