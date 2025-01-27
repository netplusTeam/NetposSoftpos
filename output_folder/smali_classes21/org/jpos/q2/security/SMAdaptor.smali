.class public Lorg/jpos/q2/security/SMAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "SMAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/security/SMAdaptorMBean;


# static fields
.field private static final DEFAULT_IMPL:Ljava/lang/String; = "org.jpos.security.jceadapter.JCESecurityModule"


# instance fields
.field clazz:Ljava/lang/String;

.field sm:Lorg/jpos/security/SMAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 51
    const-string v0, "org.jpos.security.jceadapter.JCESecurityModule"

    iput-object v0, p0, Lorg/jpos/q2/security/SMAdaptor;->clazz:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getImpl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jpos/q2/security/SMAdaptor;->clazz:Ljava/lang/String;

    return-object v0
.end method

.method protected initService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/jpos/q2/security/SMAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 55
    .local v0, "e":Lorg/jdom2/Element;
    invoke-virtual {p0}, Lorg/jpos/q2/security/SMAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v1

    .line 56
    .local v1, "factory":Lorg/jpos/q2/QFactory;
    invoke-virtual {p0}, Lorg/jpos/q2/security/SMAdaptor;->getImpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/security/SMAdapter;

    iput-object v2, p0, Lorg/jpos/q2/security/SMAdaptor;->sm:Lorg/jpos/security/SMAdapter;

    .line 57
    invoke-virtual {v1, v2, v0}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 58
    iget-object v2, p0, Lorg/jpos/q2/security/SMAdaptor;->sm:Lorg/jpos/security/SMAdapter;

    invoke-virtual {v1, v2, v0}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 59
    return-void
.end method

.method public setImpl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/jpos/q2/security/SMAdaptor;->clazz:Ljava/lang/String;

    .line 63
    return-void
.end method

.method protected startService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/jpos/q2/security/SMAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/q2/security/SMAdaptor;->sm:Lorg/jpos/security/SMAdapter;

    invoke-static {v0, v1}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method protected stopService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/jpos/q2/security/SMAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 74
    return-void
.end method
