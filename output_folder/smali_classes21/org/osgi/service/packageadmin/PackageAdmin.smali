.class public interface abstract Lorg/osgi/service/packageadmin/PackageAdmin;
.super Ljava/lang/Object;
.source "PackageAdmin.java"


# static fields
.field public static final BUNDLE_TYPE_FRAGMENT:I = 0x1


# virtual methods
.method public abstract getBundle(Ljava/lang/Class;)Lorg/osgi/framework/Bundle;
.end method

.method public abstract getBundleType(Lorg/osgi/framework/Bundle;)I
.end method

.method public abstract getBundles(Ljava/lang/String;Ljava/lang/String;)[Lorg/osgi/framework/Bundle;
.end method

.method public abstract getExportedPackage(Ljava/lang/String;)Lorg/osgi/service/packageadmin/ExportedPackage;
.end method

.method public abstract getExportedPackages(Ljava/lang/String;)[Lorg/osgi/service/packageadmin/ExportedPackage;
.end method

.method public abstract getExportedPackages(Lorg/osgi/framework/Bundle;)[Lorg/osgi/service/packageadmin/ExportedPackage;
.end method

.method public abstract getFragments(Lorg/osgi/framework/Bundle;)[Lorg/osgi/framework/Bundle;
.end method

.method public abstract getHosts(Lorg/osgi/framework/Bundle;)[Lorg/osgi/framework/Bundle;
.end method

.method public abstract getRequiredBundles(Ljava/lang/String;)[Lorg/osgi/service/packageadmin/RequiredBundle;
.end method

.method public abstract refreshPackages([Lorg/osgi/framework/Bundle;)V
.end method

.method public abstract resolveBundles([Lorg/osgi/framework/Bundle;)Z
.end method
