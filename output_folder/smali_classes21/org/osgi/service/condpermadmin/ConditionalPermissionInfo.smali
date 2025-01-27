.class public interface abstract Lorg/osgi/service/condpermadmin/ConditionalPermissionInfo;
.super Ljava/lang/Object;
.source "ConditionalPermissionInfo.java"


# static fields
.field public static final ALLOW:Ljava/lang/String; = "allow"

.field public static final DENY:Ljava/lang/String; = "deny"


# virtual methods
.method public abstract delete()V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAccessDecision()Ljava/lang/String;
.end method

.method public abstract getConditionInfos()[Lorg/osgi/service/condpermadmin/ConditionInfo;
.end method

.method public abstract getEncoded()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPermissionInfos()[Lorg/osgi/service/permissionadmin/PermissionInfo;
.end method

.method public abstract hashCode()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method
