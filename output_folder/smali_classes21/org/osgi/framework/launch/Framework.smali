.class public interface abstract Lorg/osgi/framework/launch/Framework;
.super Ljava/lang/Object;
.source "Framework.java"

# interfaces
.implements Lorg/osgi/framework/Bundle;


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

.method public abstract getBundleId()J
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

.method public abstract getLastModified()J
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getSymbolicName()Ljava/lang/String;
.end method

.method public abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
        }
    .end annotation
.end method

.method public varargs abstract init([Lorg/osgi/framework/FrameworkListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/BundleException;
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

.method public abstract waitForStop(J)Lorg/osgi/framework/FrameworkEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
