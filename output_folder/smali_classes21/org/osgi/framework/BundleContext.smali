.class public interface abstract Lorg/osgi/framework/BundleContext;
.super Ljava/lang/Object;
.source "BundleContext.java"

# interfaces
.implements Lorg/osgi/framework/BundleReference;


# virtual methods
.method public abstract addBundleListener(Lorg/osgi/framework/BundleListener;)V
.end method

.method public abstract addFrameworkListener(Lorg/osgi/framework/FrameworkListener;)V
.end method

.method public abstract addServiceListener(Lorg/osgi/framework/ServiceListener;)V
.end method

.method public abstract addServiceListener(Lorg/osgi/framework/ServiceListener;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation
.end method

.method public abstract createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation
.end method

.method public abstract getAllServiceReferences(Ljava/lang/String;Ljava/lang/String;)[Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation
.end method

.method public abstract getBundle()Lorg/osgi/framework/Bundle;
.end method

.method public abstract getBundle(J)Lorg/osgi/framework/Bundle;
.end method

.method public abstract getBundle(Ljava/lang/String;)Lorg/osgi/framework/Bundle;
.end method

.method public abstract getBundles()[Lorg/osgi/framework/Bundle;
.end method

.method public abstract getDataFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;)TS;"
        }
    .end annotation
.end method

.method public abstract getServiceObjects(Lorg/osgi/framework/ServiceReference;)Lorg/osgi/framework/ServiceObjects;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;)",
            "Lorg/osgi/framework/ServiceObjects<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract getServiceReference(Ljava/lang/Class;)Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract getServiceReference(Ljava/lang/String;)Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getServiceReferences(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation
.end method

.method public abstract getServiceReferences(Ljava/lang/String;Ljava/lang/String;)[Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation
.end method

.method public abstract installBundle(Ljava/lang/String;)Lorg/osgi/framework/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract installBundle(Ljava/lang/String;Ljava/io/InputStream;)Lorg/osgi/framework/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public abstract registerService(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;TS;",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/osgi/framework/ServiceRegistration<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract registerService(Ljava/lang/Class;Lorg/osgi/framework/ServiceFactory;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Lorg/osgi/framework/ServiceFactory<",
            "TS;>;",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/osgi/framework/ServiceRegistration<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract registerService(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/osgi/framework/ServiceRegistration<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract registerService([Ljava/lang/String;Ljava/lang/Object;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/osgi/framework/ServiceRegistration<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract removeBundleListener(Lorg/osgi/framework/BundleListener;)V
.end method

.method public abstract removeFrameworkListener(Lorg/osgi/framework/FrameworkListener;)V
.end method

.method public abstract removeServiceListener(Lorg/osgi/framework/ServiceListener;)V
.end method

.method public abstract ungetService(Lorg/osgi/framework/ServiceReference;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;)Z"
        }
    .end annotation
.end method
