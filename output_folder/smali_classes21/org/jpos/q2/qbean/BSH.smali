.class public Lorg/jpos/q2/qbean/BSH;
.super Lorg/jpos/q2/QBeanSupport;
.source "BSH.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected bsh:Lbsh/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public initService()V
    .locals 2

    .line 30
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/qbean/BSH;->bsh:Lbsh/Interpreter;

    .line 31
    invoke-virtual {v0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    .line 33
    .local v0, "bcm":Lbsh/BshClassManager;
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/BSH;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->getLoader()Lorg/jpos/q2/QClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/QClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/BshClassManager;->setClassPath([Ljava/net/URL;)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Lbsh/UtilEvalError;
    invoke-virtual {v1}, Lbsh/UtilEvalError;->printStackTrace()V

    .line 37
    .end local v1    # "e":Lbsh/UtilEvalError;
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/BSH;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/q2/Q2;->getLoader()Lorg/jpos/q2/QClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/BshClassManager;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 38
    return-void
.end method

.method public run()V
    .locals 4

    .line 43
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/BSH;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    .line 45
    .local v0, "config":Lorg/jdom2/Element;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/q2/qbean/BSH;->bsh:Lbsh/Interpreter;

    const-string v2, "qbean"

    invoke-virtual {v1, v2, p0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lorg/jpos/q2/qbean/BSH;->bsh:Lbsh/Interpreter;

    const-string v2, "log"

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/BSH;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lorg/jpos/q2/qbean/BSH;->bsh:Lbsh/Interpreter;

    const-string v2, "cfg"

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/BSH;->getConfiguration()Lorg/jpos/core/Configuration;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v1, p0, Lorg/jpos/q2/qbean/BSH;->bsh:Lbsh/Interpreter;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "source":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 51
    iget-object v2, p0, Lorg/jpos/q2/qbean/BSH;->bsh:Lbsh/Interpreter;

    invoke-virtual {v2, v1}, Lbsh/Interpreter;->source(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v1    # "source":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/BSH;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 55
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public startService()V
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BSH-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/q2/qbean/BSH;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method
