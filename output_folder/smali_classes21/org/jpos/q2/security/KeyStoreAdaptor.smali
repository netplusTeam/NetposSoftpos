.class public Lorg/jpos/q2/security/KeyStoreAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "KeyStoreAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/security/KeyStoreAdaptorMBean;


# static fields
.field public static final DEFAULT_IMPL:Ljava/lang/String; = "org.jpos.security.SimpleKeyFile"


# instance fields
.field clazz:Ljava/lang/String;

.field ks:Lorg/jpos/security/SecureKeyStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 50
    const-string v0, "org.jpos.security.SimpleKeyFile"

    iput-object v0, p0, Lorg/jpos/q2/security/KeyStoreAdaptor;->clazz:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected destroyService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/jpos/q2/security/KeyStoreAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public getImpl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jpos/q2/security/KeyStoreAdaptor;->clazz:Ljava/lang/String;

    return-object v0
.end method

.method protected initService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/jpos/q2/security/KeyStoreAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 54
    .local v0, "e":Lorg/jdom2/Element;
    invoke-virtual {p0}, Lorg/jpos/q2/security/KeyStoreAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v1

    .line 55
    .local v1, "factory":Lorg/jpos/q2/QFactory;
    invoke-virtual {p0}, Lorg/jpos/q2/security/KeyStoreAdaptor;->getImpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/security/SecureKeyStore;

    iput-object v2, p0, Lorg/jpos/q2/security/KeyStoreAdaptor;->ks:Lorg/jpos/security/SecureKeyStore;

    .line 56
    invoke-virtual {v1, v2, v0}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 57
    iget-object v2, p0, Lorg/jpos/q2/security/KeyStoreAdaptor;->ks:Lorg/jpos/security/SecureKeyStore;

    invoke-virtual {v1, v2, v0}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 58
    invoke-virtual {p0}, Lorg/jpos/q2/security/KeyStoreAdaptor;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/q2/security/KeyStoreAdaptor;->ks:Lorg/jpos/security/SecureKeyStore;

    invoke-static {v2, v3}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public setImpl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/jpos/q2/security/KeyStoreAdaptor;->clazz:Ljava/lang/String;

    .line 63
    return-void
.end method
