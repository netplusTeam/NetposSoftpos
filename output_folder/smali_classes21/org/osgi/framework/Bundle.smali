.class public interface abstract Lorg/osgi/framework/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/osgi/framework/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x20

.field public static final INSTALLED:I = 0x2

.field public static final RESOLVED:I = 0x4

.field public static final SIGNERS_ALL:I = 0x1

.field public static final SIGNERS_TRUSTED:I = 0x2

.field public static final STARTING:I = 0x8

.field public static final START_ACTIVATION_POLICY:I = 0x2

.field public static final START_TRANSIENT:I = 0x1

.field public static final STOPPING:I = 0x10

.field public static final STOP_TRANSIENT:I = 0x1

.field public static final UNINSTALLED:I = 0x1


# virtual methods
.method public abstract adapt(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract findEntries(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBundleContext()Lorg/osgi/framework/BundleContext;
.end method

.method public abstract getBundleId()J
.end method

.method public abstract getDataFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getEntry(Ljava/lang/String;)Ljava/net/URL;
.end method

.method public abstract getEntryPaths(Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders()Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders(Ljava/lang/String;)Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastModified()J
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getRegisteredServices()[Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getResource(Ljava/lang/String;)Ljava/net/URL;
.end method

.method public abstract getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getServicesInUse()[Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSignerCertificates(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract getSymbolicName()Ljava/lang/String;
.end method

.method public abstract getVersion()Lorg/osgi/framework/Version;
.end method

.method public abstract hasPermission(Ljava/lang/Object;)Z
.end method

.method public abstract loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract start(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract stop(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract uninstall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract update()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract update(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method
