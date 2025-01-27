.class public interface abstract Lorg/osgi/service/packageadmin/RequiredBundle;
.super Ljava/lang/Object;
.source "RequiredBundle.java"


# virtual methods
.method public abstract getBundle()Lorg/osgi/framework/Bundle;
.end method

.method public abstract getRequiringBundles()[Lorg/osgi/framework/Bundle;
.end method

.method public abstract getSymbolicName()Ljava/lang/String;
.end method

.method public abstract getVersion()Lorg/osgi/framework/Version;
.end method

.method public abstract isRemovalPending()Z
.end method
