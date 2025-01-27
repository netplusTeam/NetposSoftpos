.class public interface abstract Lorg/osgi/service/condpermadmin/ConditionalPermissionAdmin;
.super Ljava/lang/Object;
.source "ConditionalPermissionAdmin.java"


# virtual methods
.method public abstract addConditionalPermissionInfo([Lorg/osgi/service/condpermadmin/ConditionInfo;[Lorg/osgi/service/permissionadmin/PermissionInfo;)Lorg/osgi/service/condpermadmin/ConditionalPermissionInfo;
.end method

.method public abstract getAccessControlContext([Ljava/lang/String;)Ljava/security/AccessControlContext;
.end method

.method public abstract getConditionalPermissionInfo(Ljava/lang/String;)Lorg/osgi/service/condpermadmin/ConditionalPermissionInfo;
.end method

.method public abstract getConditionalPermissionInfos()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/osgi/service/condpermadmin/ConditionalPermissionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract newConditionalPermissionInfo(Ljava/lang/String;)Lorg/osgi/service/condpermadmin/ConditionalPermissionInfo;
.end method

.method public abstract newConditionalPermissionInfo(Ljava/lang/String;[Lorg/osgi/service/condpermadmin/ConditionInfo;[Lorg/osgi/service/permissionadmin/PermissionInfo;Ljava/lang/String;)Lorg/osgi/service/condpermadmin/ConditionalPermissionInfo;
.end method

.method public abstract newConditionalPermissionUpdate()Lorg/osgi/service/condpermadmin/ConditionalPermissionUpdate;
.end method

.method public abstract setConditionalPermissionInfo(Ljava/lang/String;[Lorg/osgi/service/condpermadmin/ConditionInfo;[Lorg/osgi/service/permissionadmin/PermissionInfo;)Lorg/osgi/service/condpermadmin/ConditionalPermissionInfo;
.end method
