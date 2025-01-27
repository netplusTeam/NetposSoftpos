.class public interface abstract Lorg/jpos/q2/QBeanSupportMBean;
.super Ljava/lang/Object;
.source "QBeanSupportMBean.java"

# interfaces
.implements Lorg/jpos/q2/QBean;
.implements Lorg/jpos/q2/QPersist;


# virtual methods
.method public abstract getDump()Ljava/lang/String;
.end method

.method public abstract getLoader()Lorg/jpos/q2/QClassLoader;
.end method

.method public abstract getLoaderURLS()[Ljava/net/URL;
.end method

.method public abstract getLogger()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getServer()Lorg/jpos/q2/Q2;
.end method

.method public abstract setLogger(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPersist(Lorg/jdom2/Element;)V
.end method

.method public abstract setRealm(Ljava/lang/String;)V
.end method

.method public abstract setServer(Lorg/jpos/q2/Q2;)V
.end method
