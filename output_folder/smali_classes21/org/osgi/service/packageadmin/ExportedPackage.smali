.class public interface abstract Lorg/osgi/service/packageadmin/ExportedPackage;
.super Ljava/lang/Object;
.source "ExportedPackage.java"


# virtual methods
.method public abstract getExportingBundle()Lorg/osgi/framework/Bundle;
.end method

.method public abstract getImportingBundles()[Lorg/osgi/framework/Bundle;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSpecificationVersion()Ljava/lang/String;
.end method

.method public abstract getVersion()Lorg/osgi/framework/Version;
.end method

.method public abstract isRemovalPending()Z
.end method
