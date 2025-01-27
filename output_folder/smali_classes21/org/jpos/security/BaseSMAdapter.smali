.class public Lorg/jpos/security/BaseSMAdapter;
.super Ljava/lang/Object;
.source "BaseSMAdapter.java"

# interfaces
.implements Lorg/jpos/security/SMAdapter;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/LogSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jpos/security/SMAdapter<",
        "TT;>;",
        "Lorg/jpos/core/Configurable;",
        "Lorg/jpos/util/LogSource;"
    }
.end annotation


# instance fields
.field protected cfg:Lorg/jpos/core/Configuration;

.field protected logger:Lorg/jpos/util/Logger;

.field private name:Ljava/lang/String;

.field protected realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/BaseSMAdapter;->logger:Lorg/jpos/util/Logger;

    .line 56
    iput-object v0, p0, Lorg/jpos/security/BaseSMAdapter;->realm:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/jpos/core/Configuration;Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 1
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .param p2, "logger"    # Lorg/jpos/util/Logger;
    .param p3, "realm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/BaseSMAdapter;->logger:Lorg/jpos/util/Logger;

    .line 56
    iput-object v0, p0, Lorg/jpos/security/BaseSMAdapter;->realm:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, p2, p3}, Lorg/jpos/security/BaseSMAdapter;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lorg/jpos/security/BaseSMAdapter;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 69
    return-void
.end method

.method public static getSMAdapter(Ljava/lang/String;)Lorg/jpos/security/SMAdapter;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s-m-adapter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/SMAdapter;

    return-object v0
.end method


# virtual methods
.method public calculateCAVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "upn"    # Ljava/lang/String;
    .param p4, "authrc"    # Ljava/lang/String;
    .param p5, "sfarc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 786
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvk":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p2, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    const-string v4, "cvk"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "unpredictable number"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "auth rc"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "second factor auth rc"

    invoke-direct {v1, v2, v3, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 793
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Calculate CAVV/AAV"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 794
    const/4 v2, 0x0

    .line 796
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lorg/jpos/security/BaseSMAdapter;->calculateCAVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 797
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Calculated CAVV/AAV"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 803
    nop

    .line 804
    return-object v2

    .line 802
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 798
    :catch_0
    move-exception v3

    .line 799
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 800
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Ljava/lang/String;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "cvk":Ljava/lang/Object;, "TT;"
    .end local p3    # "upn":Ljava/lang/String;
    .end local p4    # "authrc":Ljava/lang/String;
    .end local p5    # "sfarc":Ljava/lang/String;
    :goto_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "cvk":Ljava/lang/Object;, "TT;"
    .restart local p3    # "upn":Ljava/lang/String;
    .restart local p4    # "authrc":Ljava/lang/String;
    .restart local p5    # "sfarc":Ljava/lang/String;
    :goto_2
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 803
    throw v3
.end method

.method protected calculateCAVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "upn"    # Ljava/lang/String;
    .param p4, "authrc"    # Ljava/lang/String;
    .param p5, "sfarc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1881
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculateCVD(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/lang/String;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 761
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvkA":Ljava/lang/Object;, "TT;"
    .local p3, "cvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const-string v5, "cvk-a"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    const-string v4, "cvk-b"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Exp date"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Service code"

    invoke-direct {v1, v2, v3, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 768
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Calculate CVV/CVC"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 769
    const/4 v2, 0x0

    .line 771
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lorg/jpos/security/BaseSMAdapter;->calculateCVDImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 772
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Calculated CVV/CVC"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 778
    nop

    .line 779
    return-object v2

    .line 777
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 773
    :catch_0
    move-exception v3

    .line 774
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 775
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_2

    :cond_2
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Ljava/lang/String;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "cvkA":Ljava/lang/Object;, "TT;"
    .end local p3    # "cvkB":Ljava/lang/Object;, "TT;"
    .end local p4    # "expDate":Ljava/lang/String;
    .end local p5    # "serviceCode":Ljava/lang/String;
    :goto_2
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "cvkA":Ljava/lang/Object;, "TT;"
    .restart local p3    # "cvkB":Ljava/lang/Object;, "TT;"
    .restart local p4    # "expDate":Ljava/lang/String;
    .restart local p5    # "serviceCode":Ljava/lang/String;
    :goto_3
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 778
    throw v3
.end method

.method protected calculateCVDImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/lang/String;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1865
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvkA":Ljava/lang/Object;, "TT;"
    .local p3, "cvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculateCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/util/Date;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 736
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvkA":Ljava/lang/Object;, "TT;"
    .local p3, "cvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const-string v5, "cvk-a"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    const-string v4, "cvk-b"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Exp date"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Service code"

    invoke-direct {v1, v2, v3, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 743
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Calculate CVV/CVC"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 744
    const/4 v2, 0x0

    .line 746
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lorg/jpos/security/BaseSMAdapter;->calculateCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 747
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Calculated CVV/CVC"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 753
    nop

    .line 754
    return-object v2

    .line 752
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 748
    :catch_0
    move-exception v3

    .line 749
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 750
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_2

    :cond_2
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Ljava/lang/String;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "cvkA":Ljava/lang/Object;, "TT;"
    .end local p3    # "cvkB":Ljava/lang/Object;, "TT;"
    .end local p4    # "expDate":Ljava/util/Date;
    .end local p5    # "serviceCode":Ljava/lang/String;
    :goto_2
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "cvkA":Ljava/lang/Object;, "TT;"
    .restart local p3    # "cvkB":Ljava/lang/Object;, "TT;"
    .restart local p4    # "expDate":Ljava/util/Date;
    .restart local p5    # "serviceCode":Ljava/lang/String;
    :goto_3
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 753
    throw v3
.end method

.method protected calculateCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/util/Date;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1849
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvkA":Ljava/lang/Object;, "TT;"
    .local p3, "cvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "decTab"    # Ljava/lang/String;
    .param p5, "pinValData"    # Ljava/lang/String;
    .param p6, "minPinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 642
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "pvk":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/jpos/security/BaseSMAdapter;->calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "decTab"    # Ljava/lang/String;
    .param p5, "pinValData"    # Ljava/lang/String;
    .param p6, "minPinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 650
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "pvk":Ljava/lang/Object;, "TT;"
    .local p7, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "account number"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN under Data Key 1"

    invoke-direct {v1, v3, v2, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Data Key 1"

    invoke-direct {v1, v3, v2, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PVK"

    invoke-direct {v1, v3, v2, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "decimalisation table"

    invoke-direct {v1, v3, v2, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN validation data"

    invoke-direct {v1, v3, v2, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "minimum PIN length"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    if-eqz p7, :cond_0

    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Excluded PINs list"

    invoke-direct {v1, v3, v2, p7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_0
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 661
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Calculate PIN offset"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 662
    const/4 v2, 0x0

    .line 664
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lorg/jpos/security/BaseSMAdapter;->calculateIBMPINOffsetImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 666
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Calculated PIN offset"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 672
    nop

    .line 673
    return-object v2

    .line 671
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 667
    :catch_0
    move-exception v3

    .line 668
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 669
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Ljava/lang/String;
    .end local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .end local p3    # "pvk":Ljava/lang/Object;, "TT;"
    .end local p4    # "decTab":Ljava/lang/String;
    .end local p5    # "pinValData":Ljava/lang/String;
    .end local p6    # "minPinLen":I
    .end local p7    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .restart local p3    # "pvk":Ljava/lang/Object;, "TT;"
    .restart local p4    # "decTab":Ljava/lang/String;
    .restart local p5    # "pinValData":Ljava/lang/String;
    .restart local p6    # "minPinLen":I
    .restart local p7    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 672
    throw v3
.end method

.method public calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p3, "decTab"    # Ljava/lang/String;
    .param p4, "pinValData"    # Ljava/lang/String;
    .param p5, "minPinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 606
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "pvk":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/BaseSMAdapter;->calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public calculateIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p3, "decTab"    # Ljava/lang/String;
    .param p4, "pinValData"    # Ljava/lang/String;
    .param p5, "minPinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 613
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "pvk":Ljava/lang/Object;, "TT;"
    .local p6, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "account number"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN under LMK"

    invoke-direct {v1, v3, v2, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PVK"

    invoke-direct {v1, v3, v2, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "decimalisation table"

    invoke-direct {v1, v3, v2, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN validation data"

    invoke-direct {v1, v3, v2, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "minimum PIN length"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Excluded PINs list"

    invoke-direct {v1, v3, v2, p6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 623
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Calculate PIN offset"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 624
    const/4 v2, 0x0

    .line 626
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lorg/jpos/security/BaseSMAdapter;->calculateIBMPINOffsetImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 628
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Calculated PIN offset"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 634
    nop

    .line 635
    return-object v2

    .line 633
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 629
    :catch_0
    move-exception v3

    .line 630
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 631
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Ljava/lang/String;
    .end local p1    # "pinUnderLmk":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "pvk":Ljava/lang/Object;, "TT;"
    .end local p3    # "decTab":Ljava/lang/String;
    .end local p4    # "pinValData":Ljava/lang/String;
    .end local p5    # "minPinLen":I
    .end local p6    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local p1    # "pinUnderLmk":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "pvk":Ljava/lang/Object;, "TT;"
    .restart local p3    # "decTab":Ljava/lang/String;
    .restart local p4    # "pinValData":Ljava/lang/String;
    .restart local p5    # "minPinLen":I
    .restart local p6    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 634
    throw v3
.end method

.method protected calculateIBMPINOffsetImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "decTab"    # Ljava/lang/String;
    .param p5, "pinValData"    # Ljava/lang/String;
    .param p6, "minPinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1799
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "pvk":Ljava/lang/Object;, "TT;"
    .local p7, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calculateIBMPINOffsetImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p3, "decTab"    # Ljava/lang/String;
    .param p4, "pinValData"    # Ljava/lang/String;
    .param p5, "minPinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1780
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "pvk":Ljava/lang/Object;, "TT;"
    .local p6, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6
    .param p1, "pinUnderLMK"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "pvkIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 511
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "pvkA":Ljava/lang/Object;, "TT;"
    .local p3, "pvkB":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/security/BaseSMAdapter;->calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "pinUnderLMK"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "pvkIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 518
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "pvkA":Ljava/lang/Object;, "TT;"
    .local p3, "pvkB":Ljava/lang/Object;, "TT;"
    .local p5, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "account number"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN under LMK"

    invoke-direct {v1, v3, v2, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, ""

    if-nez p2, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const-string v5, "PVK-A"

    invoke-direct {v1, v3, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    const-string v4, "PVK-B"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "PVK index"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 525
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Excluded PINs list"

    invoke-direct {v1, v3, v2, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_2
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 527
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Calculate PVV"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 528
    const/4 v2, 0x0

    .line 530
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lorg/jpos/security/BaseSMAdapter;->calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 531
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Calculated PVV"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 537
    nop

    .line 538
    return-object v2

    .line 536
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 532
    :catch_0
    move-exception v3

    .line 533
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 534
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_2

    :cond_3
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Ljava/lang/String;
    .end local p1    # "pinUnderLMK":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "pvkA":Ljava/lang/Object;, "TT;"
    .end local p3    # "pvkB":Ljava/lang/Object;, "TT;"
    .end local p4    # "pvkIdx":I
    .end local p5    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local p1    # "pinUnderLMK":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "pvkA":Ljava/lang/Object;, "TT;"
    .restart local p3    # "pvkB":Ljava/lang/Object;, "TT;"
    .restart local p4    # "pvkIdx":I
    .restart local p5    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 537
    throw v3
.end method

.method public calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 7
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p5, "pvkIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "pvkA":Ljava/lang/Object;, "TT;"
    .local p4, "pvkB":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/BaseSMAdapter;->calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public calculatePVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p5, "pvkIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 552
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "pvkA":Ljava/lang/Object;, "TT;"
    .local p4, "pvkB":Ljava/lang/Object;, "TT;"
    .local p6, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "account number"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN under Data Key 1"

    invoke-direct {v1, v3, v2, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Data Key 1"

    invoke-direct {v1, v3, v2, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, ""

    if-nez p3, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    const-string v5, "PVK-A"

    invoke-direct {v1, v3, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p4

    :goto_1
    const-string v4, "PVK-B"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "PVK index"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    if-eqz p6, :cond_2

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 560
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Excluded PINs list"

    invoke-direct {v1, v3, v2, p6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_2
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 562
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Calculate PVV"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 563
    const/4 v2, 0x0

    .line 565
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lorg/jpos/security/BaseSMAdapter;->calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 566
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Calculated PVV"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 572
    nop

    .line 573
    return-object v2

    .line 571
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 567
    :catch_0
    move-exception v3

    .line 568
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 569
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_2

    :cond_3
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Ljava/lang/String;
    .end local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .end local p3    # "pvkA":Ljava/lang/Object;, "TT;"
    .end local p4    # "pvkB":Ljava/lang/Object;, "TT;"
    .end local p5    # "pvkIdx":I
    .end local p6    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .restart local p3    # "pvkA":Ljava/lang/Object;, "TT;"
    .restart local p4    # "pvkB":Ljava/lang/Object;, "TT;"
    .restart local p5    # "pvkIdx":I
    .restart local p6    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 572
    throw v3
.end method

.method protected calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "pinUnderLMK"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "pvkIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1730
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "pvkA":Ljava/lang/Object;, "TT;"
    .local p3, "pvkB":Ljava/lang/Object;, "TT;"
    .local p5, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calculatePVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p5, "pvkIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1747
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "pvkA":Ljava/lang/Object;, "TT;"
    .local p4, "pvkB":Ljava/lang/Object;, "TT;"
    .local p6, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculateSignature(Ljava/security/MessageDigest;Lorg/jpos/security/SecureKey;[B)[B
    .locals 6
    .param p1, "hash"    # Ljava/security/MessageDigest;
    .param p2, "privateKey"    # Lorg/jpos/security/SecureKey;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1372
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Hash Identifier"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Private Key"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "data"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1378
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Generate data signature"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1379
    const/4 v2, 0x0

    .line 1381
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jpos/security/BaseSMAdapter;->calculateSignatureImpl(Ljava/security/MessageDigest;Lorg/jpos/security/SecureKey;[B)[B

    move-result-object v3

    move-object v2, v3

    .line 1382
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Data Signature"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1388
    nop

    .line 1389
    return-object v2

    .line 1387
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1383
    :catch_0
    move-exception v3

    .line 1384
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1385
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":[B
    .end local p1    # "hash":Ljava/security/MessageDigest;
    .end local p2    # "privateKey":Lorg/jpos/security/SecureKey;
    .end local p3    # "data":[B
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1387
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":[B
    .restart local p1    # "hash":Ljava/security/MessageDigest;
    .restart local p2    # "privateKey":Lorg/jpos/security/SecureKey;
    .restart local p3    # "data":[B
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1388
    throw v3
.end method

.method protected calculateSignatureImpl(Ljava/security/MessageDigest;Lorg/jpos/security/SecureKey;[B)[B
    .locals 3
    .param p1, "hash"    # Ljava/security/MessageDigest;
    .param p2, "privateKey"    # Lorg/jpos/security/SecureKey;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2211
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dataDecrypt(Ljava/lang/Object;[B)[B
    .locals 3
    .param p2, "clearText"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2265
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p1, "bdk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dataEncrypt(Ljava/lang/Object;[B)[B
    .locals 3
    .param p2, "clearText"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2260
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p1, "bdk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decryptData(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B
    .locals 8
    .param p1, "cipherMode"    # Lorg/jpos/security/CipherMode;
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "data"    # [B
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1214
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    const-string v0, "result"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "parameter"

    const-string v4, "Block Cipher Mode"

    invoke-direct {v2, v3, v4, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    if-eqz p2, :cond_0

    .line 1217
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v4, "Data key"

    invoke-direct {v2, v3, v4, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_0
    if-eqz p3, :cond_1

    .line 1219
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    invoke-static {p3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Data"

    invoke-direct {v2, v3, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    :cond_1
    const-string v2, "Initialization Vector"

    if-eqz p4, :cond_2

    .line 1221
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    invoke-static {p4}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    :cond_2
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "s-m-operation"

    invoke-direct {v3, p0, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1224
    .local v3, "evt":Lorg/jpos/util/LogEvent;
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v5, "command"

    const-string v6, "Decrypt Data"

    invoke-direct {v4, v5, v6, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1225
    const/4 v4, 0x0

    .line 1227
    .local v4, "decData":[B
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/BaseSMAdapter;->decryptDataImpl(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B

    move-result-object v5

    move-object v4, v5

    .line 1228
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v5, "r":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v6, Lorg/jpos/util/SimpleMsg;

    const-string v7, "Decrypted Data"

    invoke-direct {v6, v0, v7, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    if-eqz p4, :cond_3

    .line 1231
    new-instance v6, Lorg/jpos/util/SimpleMsg;

    invoke-direct {v6, v0, v2, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_3
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v2, "results"

    invoke-direct {v0, v2, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    .end local v5    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1238
    nop

    .line 1239
    return-object v4

    .line 1237
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1235
    instance-of v2, v0, Lorg/jpos/security/SMException;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_4
    new-instance v2, Lorg/jpos/security/SMException;

    invoke-direct {v2, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "decData":[B
    .end local p1    # "cipherMode":Lorg/jpos/security/CipherMode;
    .end local p2    # "kd":Lorg/jpos/security/SecureDESKey;
    .end local p3    # "data":[B
    .end local p4    # "iv":[B
    :goto_0
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1237
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "decData":[B
    .restart local p1    # "cipherMode":Lorg/jpos/security/CipherMode;
    .restart local p2    # "kd":Lorg/jpos/security/SecureDESKey;
    .restart local p3    # "data":[B
    .restart local p4    # "iv":[B
    :goto_1
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1238
    throw v0
.end method

.method public decryptData(Lorg/jpos/security/SecureKey;[BLjava/security/spec/AlgorithmParameterSpec;[B)[B
    .locals 8
    .param p1, "privKey"    # Lorg/jpos/security/SecureKey;
    .param p2, "data"    # [B
    .param p3, "algspec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1427
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    const-string v0, "result"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "parameter"

    const-string v4, "Decription Key"

    invoke-direct {v2, v3, v4, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encrypted Data"

    invoke-direct {v2, v3, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    if-eqz p3, :cond_0

    .line 1431
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v4, "Algorithm Spec"

    invoke-direct {v2, v3, v4, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    :cond_0
    const-string v2, "Initialization Vector"

    if-eqz p4, :cond_1

    .line 1433
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    invoke-static {p4}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    :cond_1
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "s-m-operation"

    invoke-direct {v3, p0, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1435
    .local v3, "evt":Lorg/jpos/util/LogEvent;
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v5, "command"

    const-string v6, "Decrypt Data"

    invoke-direct {v4, v5, v6, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1436
    const/4 v4, 0x0

    .line 1438
    .local v4, "result":[B
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/BaseSMAdapter;->decryptDataImpl(Lorg/jpos/security/SecureKey;[BLjava/security/spec/AlgorithmParameterSpec;[B)[B

    move-result-object v5

    move-object v4, v5

    .line 1439
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .local v5, "r":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v6, Lorg/jpos/util/SimpleMsg;

    const-string v7, "Decrypted Data"

    invoke-direct {v6, v0, v7, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    if-eqz p4, :cond_2

    .line 1442
    new-instance v6, Lorg/jpos/util/SimpleMsg;

    invoke-direct {v6, v0, v2, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    :cond_2
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v2, "results"

    invoke-direct {v0, v2, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/security/SMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    .end local v5    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1452
    nop

    .line 1453
    return-object v4

    .line 1451
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1449
    new-instance v2, Lorg/jpos/security/SMException;

    invoke-direct {v2, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "result":[B
    .end local p1    # "privKey":Lorg/jpos/security/SecureKey;
    .end local p2    # "data":[B
    .end local p3    # "algspec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "iv":[B
    throw v2

    .line 1444
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "result":[B
    .restart local p1    # "privKey":Lorg/jpos/security/SecureKey;
    .restart local p2    # "data":[B
    .restart local p3    # "algspec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p4    # "iv":[B
    :catch_1
    move-exception v0

    .line 1445
    .local v0, "ex":Lorg/jpos/security/SMException;
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1446
    nop

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "result":[B
    .end local p1    # "privKey":Lorg/jpos/security/SecureKey;
    .end local p2    # "data":[B
    .end local p3    # "algspec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "iv":[B
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1451
    .end local v0    # "ex":Lorg/jpos/security/SMException;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "result":[B
    .restart local p1    # "privKey":Lorg/jpos/security/SecureKey;
    .restart local p2    # "data":[B
    .restart local p3    # "algspec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p4    # "iv":[B
    :goto_0
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1452
    throw v0
.end method

.method protected decryptDataImpl(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B
    .locals 3
    .param p1, "cipherMode"    # Lorg/jpos/security/CipherMode;
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "data"    # [B
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2129
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decryptDataImpl(Lorg/jpos/security/SecureKey;[BLjava/security/spec/AlgorithmParameterSpec;[B)[B
    .locals 3
    .param p1, "decKey"    # Lorg/jpos/security/SecureKey;
    .param p2, "data"    # [B
    .param p3, "algspec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2243
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decryptPIN(Lorg/jpos/security/EncryptedPIN;)Ljava/lang/String;
    .locals 6
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 314
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "PIN under LMK"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 317
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Decrypt PIN"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 318
    const/4 v2, 0x0

    .line 320
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/security/BaseSMAdapter;->decryptPINImpl(Lorg/jpos/security/EncryptedPIN;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 321
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "clear PIN"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 327
    nop

    .line 328
    return-object v2

    .line 326
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 322
    :catch_0
    move-exception v3

    .line 323
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 324
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Ljava/lang/String;
    .end local p1    # "pinUnderLmk":Lorg/jpos/security/EncryptedPIN;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local p1    # "pinUnderLmk":Lorg/jpos/security/EncryptedPIN;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 327
    throw v3
.end method

.method protected decryptPINImpl(Lorg/jpos/security/EncryptedPIN;)Ljava/lang/String;
    .locals 3
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1588
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deriveIBMPIN(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "decTab"    # Ljava/lang/String;
    .param p4, "pinValData"    # Ljava/lang/String;
    .param p5, "minPinLen"    # I
    .param p6, "offset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 710
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "pvk":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Offset"

    invoke-direct {v1, v2, v3, p6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "PVK"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Decimalisation table"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "PIN validation data"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Minimum PIN length"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 718
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Derive a PIN Using the IBM Method"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 719
    const/4 v2, 0x0

    .line 721
    .local v2, "result":Lorg/jpos/security/EncryptedPIN;
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lorg/jpos/security/BaseSMAdapter;->deriveIBMPINImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v3

    move-object v2, v3

    .line 722
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Derived PIN"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 728
    nop

    .line 729
    return-object v2

    .line 727
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 723
    :catch_0
    move-exception v3

    .line 724
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 725
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "pvk":Ljava/lang/Object;, "TT;"
    .end local p3    # "decTab":Ljava/lang/String;
    .end local p4    # "pinValData":Ljava/lang/String;
    .end local p5    # "minPinLen":I
    .end local p6    # "offset":Ljava/lang/String;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "pvk":Ljava/lang/Object;, "TT;"
    .restart local p3    # "decTab":Ljava/lang/String;
    .restart local p4    # "pinValData":Ljava/lang/String;
    .restart local p5    # "minPinLen":I
    .restart local p6    # "offset":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 728
    throw v3
.end method

.method protected deriveIBMPINImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/jpos/security/EncryptedPIN;
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "decTab"    # Ljava/lang/String;
    .param p4, "pinValData"    # Ljava/lang/String;
    .param p5, "minPinLen"    # I
    .param p6, "offset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1834
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "pvk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encryptData(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B
    .locals 8
    .param p1, "cipherMode"    # Lorg/jpos/security/CipherMode;
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "data"    # [B
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1172
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    const-string v0, "result"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "parameter"

    const-string v4, "Block Cipher Mode"

    invoke-direct {v2, v3, v4, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    if-eqz p2, :cond_0

    .line 1175
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v4, "Data key"

    invoke-direct {v2, v3, v4, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    :cond_0
    if-eqz p3, :cond_1

    .line 1177
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    invoke-static {p3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Data"

    invoke-direct {v2, v3, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_1
    const-string v2, "Initialization Vector"

    if-eqz p4, :cond_2

    .line 1179
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    invoke-static {p4}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_2
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "s-m-operation"

    invoke-direct {v3, p0, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1182
    .local v3, "evt":Lorg/jpos/util/LogEvent;
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v5, "command"

    const-string v6, "Encrypt Data"

    invoke-direct {v4, v5, v6, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1183
    const/4 v4, 0x0

    .line 1185
    .local v4, "encData":[B
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/BaseSMAdapter;->encryptDataImpl(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B

    move-result-object v5

    move-object v4, v5

    .line 1186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    .local v5, "r":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v6, Lorg/jpos/util/SimpleMsg;

    const-string v7, "Encrypted Data"

    invoke-direct {v6, v0, v7, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    if-eqz p4, :cond_3

    .line 1189
    new-instance v6, Lorg/jpos/util/SimpleMsg;

    invoke-direct {v6, v0, v2, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_3
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v2, "results"

    invoke-direct {v0, v2, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    .end local v5    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1196
    nop

    .line 1197
    return-object v4

    .line 1195
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1193
    instance-of v2, v0, Lorg/jpos/security/SMException;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_4
    new-instance v2, Lorg/jpos/security/SMException;

    invoke-direct {v2, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "encData":[B
    .end local p1    # "cipherMode":Lorg/jpos/security/CipherMode;
    .end local p2    # "kd":Lorg/jpos/security/SecureDESKey;
    .end local p3    # "data":[B
    .end local p4    # "iv":[B
    :goto_0
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "encData":[B
    .restart local p1    # "cipherMode":Lorg/jpos/security/CipherMode;
    .restart local p2    # "kd":Lorg/jpos/security/SecureDESKey;
    .restart local p3    # "data":[B
    .restart local p4    # "iv":[B
    :goto_1
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1196
    throw v0
.end method

.method public encryptData(Lorg/jpos/security/SecureKey;[BLjava/security/spec/AlgorithmParameterSpec;[B)[B
    .locals 8
    .param p1, "encKey"    # Lorg/jpos/security/SecureKey;
    .param p2, "data"    # [B
    .param p3, "algspec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1395
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    const-string v0, "result"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "parameter"

    const-string v4, "Encription Key"

    invoke-direct {v2, v3, v4, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1397
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Data"

    invoke-direct {v2, v3, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1398
    if-eqz p3, :cond_0

    .line 1399
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v4, "Algorithm Spec"

    invoke-direct {v2, v3, v4, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    :cond_0
    const-string v2, "Initialization Vector"

    if-eqz p4, :cond_1

    .line 1401
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    invoke-static {p4}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    :cond_1
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "s-m-operation"

    invoke-direct {v3, p0, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1403
    .local v3, "evt":Lorg/jpos/util/LogEvent;
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v5, "command"

    const-string v6, "Encrypt Data"

    invoke-direct {v4, v5, v6, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1404
    const/4 v4, 0x0

    .line 1406
    .local v4, "result":[B
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/BaseSMAdapter;->encryptDataImpl(Lorg/jpos/security/SecureKey;[BLjava/security/spec/AlgorithmParameterSpec;[B)[B

    move-result-object v5

    move-object v4, v5

    .line 1407
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    .local v5, "r":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v6, Lorg/jpos/util/SimpleMsg;

    const-string v7, "Encrypted Data"

    invoke-direct {v6, v0, v7, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1409
    if-eqz p4, :cond_2

    .line 1410
    new-instance v6, Lorg/jpos/util/SimpleMsg;

    invoke-direct {v6, v0, v2, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    :cond_2
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v2, "results"

    invoke-direct {v0, v2, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/security/SMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    .end local v5    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1420
    nop

    .line 1421
    return-object v4

    .line 1419
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1415
    :catch_0
    move-exception v0

    .line 1416
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1417
    new-instance v2, Lorg/jpos/security/SMException;

    invoke-direct {v2, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "result":[B
    .end local p1    # "encKey":Lorg/jpos/security/SecureKey;
    .end local p2    # "data":[B
    .end local p3    # "algspec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "iv":[B
    throw v2

    .line 1412
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "result":[B
    .restart local p1    # "encKey":Lorg/jpos/security/SecureKey;
    .restart local p2    # "data":[B
    .restart local p3    # "algspec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p4    # "iv":[B
    :catch_1
    move-exception v0

    .line 1413
    .local v0, "ex":Lorg/jpos/security/SMException;
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1414
    nop

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "result":[B
    .end local p1    # "encKey":Lorg/jpos/security/SecureKey;
    .end local p2    # "data":[B
    .end local p3    # "algspec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "iv":[B
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    .end local v0    # "ex":Lorg/jpos/security/SMException;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "result":[B
    .restart local p1    # "encKey":Lorg/jpos/security/SecureKey;
    .restart local p2    # "data":[B
    .restart local p3    # "algspec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p4    # "iv":[B
    :goto_0
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1420
    throw v0
.end method

.method protected encryptDataImpl(Lorg/jpos/security/CipherMode;Lorg/jpos/security/SecureDESKey;[B[B)[B
    .locals 3
    .param p1, "cipherMode"    # Lorg/jpos/security/CipherMode;
    .param p2, "kd"    # Lorg/jpos/security/SecureDESKey;
    .param p3, "data"    # [B
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2115
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected encryptDataImpl(Lorg/jpos/security/SecureKey;[BLjava/security/spec/AlgorithmParameterSpec;[B)[B
    .locals 3
    .param p1, "encKey"    # Lorg/jpos/security/SecureKey;
    .param p2, "data"    # [B
    .param p3, "algspec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2227
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encryptPIN(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/EncryptedPIN;
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "accountNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/security/BaseSMAdapter;->encryptPIN(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jpos/security/EncryptedPIN;

    move-result-object v0

    return-object v0
.end method

.method public encryptPIN(Ljava/lang/String;Ljava/lang/String;Z)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "accountNumber"    # Ljava/lang/String;
    .param p3, "extract"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 289
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    if-eqz p3, :cond_0

    invoke-static {p2}, Lorg/jpos/security/EncryptedPIN;->extractAccountNumberPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    move-object p2, v0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "clear pin"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 294
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Encrypt Clear PIN"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 295
    const/4 v2, 0x0

    .line 297
    .local v2, "result":Lorg/jpos/security/EncryptedPIN;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/BaseSMAdapter;->encryptPINImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v3

    move-object v2, v3

    .line 298
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "PIN under LMK"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 304
    nop

    .line 305
    return-object v2

    .line 303
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 299
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 301
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .end local p1    # "pin":Ljava/lang/String;
    .end local p2    # "accountNumber":Ljava/lang/String;
    .end local p3    # "extract":Z
    :goto_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .restart local p1    # "pin":Ljava/lang/String;
    .restart local p2    # "accountNumber":Ljava/lang/String;
    .restart local p3    # "extract":Z
    :goto_2
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 304
    throw v3
.end method

.method protected encryptPINImpl(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/EncryptedPIN;
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "accountNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1578
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eraseOldLMK()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1458
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1460
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Erase the key change storage"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1462
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/security/BaseSMAdapter;->eraseOldLMKImpl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1468
    nop

    .line 1469
    return-void

    .line 1467
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1463
    :catch_0
    move-exception v2

    .line 1464
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1465
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    :goto_0
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1468
    throw v2
.end method

.method protected eraseOldLMKImpl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2255
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exportKey(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .locals 6
    .param p1, "kek"    # Lorg/jpos/security/SecureKey;
    .param p2, "key"    # Lorg/jpos/security/SecureKey;
    .param p3, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 268
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Key-Encrypting Key"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Key"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Key Specification"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 273
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Export Key"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 274
    const/4 v2, 0x0

    .line 276
    .local v2, "result":Lorg/jpos/security/SecureKey;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jpos/security/BaseSMAdapter;->exportKeyImpl(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;

    move-result-object v3

    move-object v2, v3

    .line 277
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Exported Key"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 283
    nop

    .line 284
    return-object v2

    .line 282
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 278
    :catch_0
    move-exception v3

    .line 279
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 280
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/SecureKey;
    .end local p1    # "kek":Lorg/jpos/security/SecureKey;
    .end local p2    # "key":Lorg/jpos/security/SecureKey;
    .end local p3    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/SecureKey;
    .restart local p1    # "kek":Lorg/jpos/security/SecureKey;
    .restart local p2    # "key":Lorg/jpos/security/SecureKey;
    .restart local p3    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 283
    throw v3
.end method

.method public exportKey(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)[B
    .locals 6
    .param p1, "key"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "kek"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Key"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Key-Encrypting Key"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 251
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Export Key"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 252
    const/4 v2, 0x0

    .line 254
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/BaseSMAdapter;->exportKeyImpl(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)[B

    move-result-object v3

    move-object v2, v3

    .line 255
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Exported Key"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 261
    nop

    .line 262
    return-object v2

    .line 260
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 256
    :catch_0
    move-exception v3

    .line 257
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 258
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":[B
    .end local p1    # "key":Lorg/jpos/security/SecureDESKey;
    .end local p2    # "kek":Lorg/jpos/security/SecureDESKey;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":[B
    .restart local p1    # "key":Lorg/jpos/security/SecureDESKey;
    .restart local p2    # "kek":Lorg/jpos/security/SecureDESKey;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 261
    throw v3
.end method

.method protected exportKeyImpl(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .locals 3
    .param p1, "kek"    # Lorg/jpos/security/SecureKey;
    .param p2, "key"    # Lorg/jpos/security/SecureKey;
    .param p3, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1567
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected exportKeyImpl(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)[B
    .locals 3
    .param p1, "key"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "kek"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1553
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exportPIN(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p3, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 435
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd2":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "PIN under LMK"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Data Key 2"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const-string v4, "Destination PIN Block Format"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 440
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Export PIN"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 441
    const/4 v2, 0x0

    .line 443
    .local v2, "result":Lorg/jpos/security/EncryptedPIN;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jpos/security/BaseSMAdapter;->exportPINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;

    move-result-object v3

    move-object v2, v3

    .line 444
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "PIN under Data Key 2"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 450
    nop

    .line 451
    return-object v2

    .line 449
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 445
    :catch_0
    move-exception v3

    .line 446
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 447
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .end local p1    # "pinUnderLmk":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "kd2":Ljava/lang/Object;, "TT;"
    .end local p3    # "destinationPINBlockFormat":B
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .restart local p1    # "pinUnderLmk":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "kd2":Ljava/lang/Object;, "TT;"
    .restart local p3    # "destinationPINBlockFormat":B
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 450
    throw v3
.end method

.method protected exportPINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .locals 3
    .param p1, "pinUnderLmk"    # Lorg/jpos/security/EncryptedPIN;
    .param p3, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1687
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd2":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs formKEYfromClearComponents(SLjava/lang/String;[Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .locals 3
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "clearComponents"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2270
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateARPC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 13
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p4, "accoutNo"    # Ljava/lang/String;
    .param p5, "acctSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "arpcMethod"    # Lorg/jpos/security/ARPCMethod;
    .param p10, "arc"    # [B
    .param p11, "propAuthData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/ARPCMethod;",
            "[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1015
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 1016
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "mkd method"

    move-object v4, p1

    invoke-direct {v0, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "skd method"

    move-object v5, p2

    invoke-direct {v0, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "imk-ac"

    move-object/from16 v6, p3

    invoke-direct {v0, v2, v3, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "account number"

    move-object/from16 v7, p4

    invoke-direct {v0, v2, v3, v7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "accnt seq no"

    move-object/from16 v8, p5

    invoke-direct {v0, v2, v3, v8}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p6, :cond_0

    move-object v9, v3

    goto :goto_0

    :cond_0
    invoke-static/range {p6 .. p6}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_0
    const-string v10, "arqc"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p7, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    invoke-static/range {p7 .. p7}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const-string v10, "atc"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p8, :cond_2

    move-object v9, v3

    goto :goto_2

    :cond_2
    invoke-static/range {p8 .. p8}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const-string v10, "upn"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v9, "arpc gen. method"

    move-object/from16 v10, p9

    invoke-direct {v0, v2, v9, v10}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p10, :cond_3

    move-object v9, v3

    goto :goto_3

    :cond_3
    invoke-static/range {p10 .. p10}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string v11, "auth. rc"

    invoke-direct {v0, v2, v11, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p11, :cond_4

    goto :goto_4

    .line 1027
    :cond_4
    invoke-static/range {p11 .. p11}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_4
    const-string v9, "prop auth. data"

    invoke-direct {v0, v2, v9, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1026
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    move-object v3, p0

    invoke-direct {v0, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    move-object v2, v0

    .line 1030
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v9, "command"

    const-string v11, "Genarate ARPC"

    invoke-direct {v0, v9, v11, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1032
    :try_start_0
    invoke-virtual/range {p0 .. p11}, Lorg/jpos/security/BaseSMAdapter;->generateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B

    move-result-object v0

    .line 1034
    .local v0, "result":[B
    new-instance v9, Lorg/jpos/util/SimpleMsg;

    const-string v11, "result"

    const-string v12, "Generated ARPC"

    invoke-direct {v9, v11, v12, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    nop

    .line 1040
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1035
    return-object v0

    .line 1040
    .end local v0    # "result":[B
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1038
    instance-of v9, v0, Lorg/jpos/security/SMException;

    if-eqz v9, :cond_5

    move-object v9, v0

    check-cast v9, Lorg/jpos/security/SMException;

    goto :goto_5

    :cond_5
    new-instance v9, Lorg/jpos/security/SMException;

    invoke-direct {v9, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .end local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .end local p3    # "imkac":Ljava/lang/Object;, "TT;"
    .end local p4    # "accoutNo":Ljava/lang/String;
    .end local p5    # "acctSeqNo":Ljava/lang/String;
    .end local p6    # "arqc":[B
    .end local p7    # "atc":[B
    .end local p8    # "upn":[B
    .end local p9    # "arpcMethod":Lorg/jpos/security/ARPCMethod;
    .end local p10    # "arc":[B
    .end local p11    # "propAuthData":[B
    :goto_5
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1040
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .restart local p3    # "imkac":Ljava/lang/Object;, "TT;"
    .restart local p4    # "accoutNo":Ljava/lang/String;
    .restart local p5    # "acctSeqNo":Ljava/lang/String;
    .restart local p6    # "arqc":[B
    .restart local p7    # "atc":[B
    .restart local p8    # "upn":[B
    .restart local p9    # "arpcMethod":Lorg/jpos/security/ARPCMethod;
    .restart local p10    # "arc":[B
    .restart local p11    # "propAuthData":[B
    :goto_6
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1041
    throw v0
.end method

.method protected generateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 3
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "acctSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "arpcMethod"    # Lorg/jpos/security/ARPCMethod;
    .param p10, "arc"    # [B
    .param p11, "propAuthData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/ARPCMethod;",
            "[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2027
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateCBC_MAC([BLjava/lang/Object;)[B
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1244
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "data"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "data key"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1248
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Generate CBC-MAC"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1249
    const/4 v2, 0x0

    .line 1251
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/BaseSMAdapter;->generateCBC_MACImpl([BLjava/lang/Object;)[B

    move-result-object v3

    move-object v2, v3

    .line 1252
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "CBC-MAC"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1258
    nop

    .line 1259
    return-object v2

    .line 1257
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1253
    :catch_0
    move-exception v3

    .line 1254
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1255
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":[B
    .end local p1    # "data":[B
    .end local p2    # "kd":Ljava/lang/Object;, "TT;"
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":[B
    .restart local p1    # "data":[B
    .restart local p2    # "kd":Ljava/lang/Object;, "TT;"
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1258
    throw v3
.end method

.method protected generateCBC_MACImpl([BLjava/lang/Object;)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2140
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateEDE_MAC([BLjava/lang/Object;)[B
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1264
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "data"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "data key"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1268
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Generate EDE-MAC"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1269
    const/4 v2, 0x0

    .line 1271
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/BaseSMAdapter;->generateEDE_MACImpl([BLjava/lang/Object;)[B

    move-result-object v3

    move-object v2, v3

    .line 1272
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "EDE-MAC"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1278
    nop

    .line 1279
    return-object v2

    .line 1277
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1273
    :catch_0
    move-exception v3

    .line 1274
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1275
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":[B
    .end local p1    # "data":[B
    .end local p2    # "kd":Ljava/lang/Object;, "TT;"
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":[B
    .restart local p1    # "data":[B
    .restart local p2    # "kd":Ljava/lang/Object;, "TT;"
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1278
    throw v3
.end method

.method protected generateEDE_MACImpl([BLjava/lang/Object;)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2151
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateKey(SLjava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .locals 6
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "Key Length"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Key Type"

    invoke-direct {v1, v3, v2, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 125
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Generate Key"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 126
    const/4 v2, 0x0

    .line 128
    .local v2, "result":Lorg/jpos/security/SecureDESKey;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/BaseSMAdapter;->generateKeyImpl(SLjava/lang/String;)Lorg/jpos/security/SecureDESKey;

    move-result-object v3

    move-object v2, v3

    .line 129
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Generated Key"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 135
    nop

    .line 136
    return-object v2

    .line 134
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 132
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/SecureDESKey;
    .end local p1    # "keyLength":S
    .end local p2    # "keyType":Ljava/lang/String;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/SecureDESKey;
    .restart local p1    # "keyLength":S
    .restart local p2    # "keyType":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 135
    throw v3
.end method

.method public generateKey(Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .locals 6
    .param p1, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Key Specification"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 144
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Generate Key"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "result":Lorg/jpos/security/SecureKey;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/security/BaseSMAdapter;->generateKeyImpl(Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;

    move-result-object v3

    move-object v2, v3

    .line 148
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Generated Key"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 154
    nop

    .line 155
    return-object v2

    .line 153
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 151
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/SecureKey;
    .end local p1    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/SecureKey;
    .restart local p1    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 154
    throw v3
.end method

.method public generateKeyCheckValue(Ljava/lang/Object;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p1, "kd":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Key with untrusted check value"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 163
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Generate Key Check Value"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 164
    const/4 v2, 0x0

    .line 166
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/security/BaseSMAdapter;->generateKeyCheckValueImpl(Ljava/lang/Object;)[B

    move-result-object v3

    move-object v2, v3

    .line 167
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Generated Key Check Value"

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 173
    nop

    .line 174
    return-object v2

    .line 172
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 170
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":[B
    .end local p1    # "kd":Ljava/lang/Object;, "TT;"
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":[B
    .restart local p1    # "kd":Ljava/lang/Object;, "TT;"
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 173
    throw v3
.end method

.method protected generateKeyCheckValueImpl(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1500
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p1, "kd":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateKeyImpl(SLjava/lang/String;)Lorg/jpos/security/SecureDESKey;
    .locals 3
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1479
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateKeyImpl(Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .locals 3
    .param p1, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1490
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateKeyPair(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/javatuples/Pair;
    .locals 8
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ")",
            "Lorg/javatuples/Pair<",
            "Ljava/security/PublicKey;",
            "Lorg/jpos/security/SecurePrivateKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1324
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    const-string v0, "result"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "parameter"

    const-string v5, "Algorithm Parameter Spec"

    invoke-direct {v2, v4, v5, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    new-instance v2, Lorg/jpos/util/LogEvent;

    const-string v3, "s-m-operation"

    invoke-direct {v2, p0, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1328
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "command"

    const-string v5, "Generate public/private key pair"

    invoke-direct {v3, v4, v5, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1329
    const/4 v3, 0x0

    .line 1331
    .local v3, "result":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<Ljava/security/PublicKey;Lorg/jpos/security/SecurePrivateKey;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/security/BaseSMAdapter;->generateKeyPairImpl(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/javatuples/Pair;

    move-result-object v4

    move-object v3, v4

    .line 1332
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v4, "cmdResults":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v5, Lorg/jpos/util/SimpleMsg;

    const-string v6, "Public Key"

    invoke-virtual {v3}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/PublicKey;

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    new-instance v5, Lorg/jpos/util/SimpleMsg;

    const-string v6, "Private Key"

    invoke-virtual {v3}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/security/SecurePrivateKey;

    invoke-virtual {v7}, Lorg/jpos/security/SecurePrivateKey;->getKeyBytes()[B

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v5, "results"

    const-string v6, "Complex results"

    invoke-direct {v0, v5, v6, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    .end local v4    # "cmdResults":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1341
    nop

    .line 1342
    return-object v3

    .line 1340
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1336
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1338
    instance-of v4, v0, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "result":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<Ljava/security/PublicKey;Lorg/jpos/security/SecurePrivateKey;>;"
    .end local p1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1340
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "result":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<Ljava/security/PublicKey;Lorg/jpos/security/SecurePrivateKey;>;"
    .restart local p1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_1
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1341
    throw v0
.end method

.method public generateKeyPair(Lorg/jpos/security/SecureKeySpec;)Lorg/javatuples/Pair;
    .locals 8
    .param p1, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/SecureKeySpec;",
            ")",
            "Lorg/javatuples/Pair<",
            "Ljava/security/PublicKey;",
            "Lorg/jpos/security/SecureKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1348
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    const-string v0, "result"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "parameter"

    const-string v4, "Key Pair Specification"

    invoke-direct {v2, v3, v4, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    new-instance v2, Lorg/jpos/util/LogEvent;

    const-string v3, "s-m-operation"

    invoke-direct {v2, p0, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1352
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "command"

    const-string v5, "Generate public/private key pair"

    invoke-direct {v3, v4, v5, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1353
    const/4 v3, 0x0

    .line 1355
    .local v3, "result":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<Ljava/security/PublicKey;Lorg/jpos/security/SecureKey;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/security/BaseSMAdapter;->generateKeyPairImpl(Lorg/jpos/security/SecureKeySpec;)Lorg/javatuples/Pair;

    move-result-object v4

    move-object v3, v4

    .line 1356
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v4, "cmdResults":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v5, Lorg/jpos/util/SimpleMsg;

    const-string v6, "Public Key"

    invoke-virtual {v3}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/PublicKey;

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    new-instance v5, Lorg/jpos/util/SimpleMsg;

    const-string v6, "Private Key"

    invoke-virtual {v3}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/security/SecureKey;

    invoke-virtual {v7}, Lorg/jpos/security/SecureKey;->getKeyBytes()[B

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v5, "results"

    const-string v6, "Complex results"

    invoke-direct {v0, v5, v6, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    .end local v4    # "cmdResults":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1365
    nop

    .line 1366
    return-object v3

    .line 1364
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1362
    instance-of v4, v0, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v3    # "result":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<Ljava/security/PublicKey;Lorg/jpos/security/SecureKey;>;"
    .end local p1    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v3    # "result":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<Ljava/security/PublicKey;Lorg/jpos/security/SecureKey;>;"
    .restart local p1    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    :goto_1
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1365
    throw v0
.end method

.method protected generateKeyPairImpl(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/javatuples/Pair;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ")",
            "Lorg/javatuples/Pair<",
            "Ljava/security/PublicKey;",
            "Lorg/jpos/security/SecurePrivateKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2186
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateKeyPairImpl(Lorg/jpos/security/SecureKeySpec;)Lorg/javatuples/Pair;
    .locals 3
    .param p1, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/SecureKeySpec;",
            ")",
            "Lorg/javatuples/Pair<",
            "Ljava/security/PublicKey;",
            "Lorg/jpos/security/SecureKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2198
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generatePIN(Ljava/lang/String;I)Lorg/jpos/security/EncryptedPIN;
    .locals 1
    .param p1, "accountNumber"    # Ljava/lang/String;
    .param p2, "pinLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 457
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/security/BaseSMAdapter;->generatePIN(Ljava/lang/String;ILjava/util/List;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v0

    return-object v0
.end method

.method public generatePIN(Ljava/lang/String;ILjava/util/List;)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "accountNumber"    # Ljava/lang/String;
    .param p2, "pinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 463
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PIN length"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Excluded PINs list"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_0
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 470
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Generate PIN"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 471
    const/4 v2, 0x0

    .line 473
    .local v2, "result":Lorg/jpos/security/EncryptedPIN;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jpos/security/BaseSMAdapter;->generatePINImpl(Ljava/lang/String;ILjava/util/List;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v3

    move-object v2, v3

    .line 474
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Generated PIN"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 480
    nop

    .line 481
    return-object v2

    .line 479
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 475
    :catch_0
    move-exception v3

    .line 476
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 477
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .end local p1    # "accountNumber":Ljava/lang/String;
    .end local p2    # "pinLen":I
    .end local p3    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .restart local p1    # "accountNumber":Ljava/lang/String;
    .restart local p2    # "pinLen":I
    .restart local p3    # "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 480
    throw v3
.end method

.method protected generatePINImpl(Ljava/lang/String;ILjava/util/List;)Lorg/jpos/security/EncryptedPIN;
    .locals 3
    .param p1, "accountNumber"    # Ljava/lang/String;
    .param p2, "pinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1700
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateSM_MAC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 7
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "acctSeqNo"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "arqc"    # [B
    .param p8, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1087
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "imksmi":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "mkd method"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "skd method"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "imk-smi"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "accnt seq no"

    invoke-direct {v1, v2, v3, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p6, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-static {p6}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "atc"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p7, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-static {p7}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, "arqc"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p8, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    invoke-static {p8}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v5, "data"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1097
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v4, "command"

    const-string v5, "Generate Secure Messaging MAC"

    invoke-direct {v2, v4, v5, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1099
    :try_start_0
    invoke-virtual/range {p0 .. p8}, Lorg/jpos/security/BaseSMAdapter;->generateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    move-result-object v2

    .line 1100
    .local v2, "mac":[B
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v5, "result"

    const-string v6, "Generated MAC"

    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-direct {v4, v5, v6, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    nop

    .line 1106
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1101
    return-object v2

    .line 1106
    .end local v2    # "mac":[B
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1102
    :catch_0
    move-exception v2

    .line 1103
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1104
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_3

    :cond_4
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .end local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .end local p3    # "imksmi":Ljava/lang/Object;, "TT;"
    .end local p4    # "accountNo":Ljava/lang/String;
    .end local p5    # "acctSeqNo":Ljava/lang/String;
    .end local p6    # "atc":[B
    .end local p7    # "arqc":[B
    .end local p8    # "data":[B
    :goto_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1106
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .restart local p3    # "imksmi":Ljava/lang/Object;, "TT;"
    .restart local p4    # "accountNo":Ljava/lang/String;
    .restart local p5    # "acctSeqNo":Ljava/lang/String;
    .restart local p6    # "atc":[B
    .restart local p7    # "arqc":[B
    .restart local p8    # "data":[B
    :goto_4
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1107
    throw v2
.end method

.method protected generateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 3
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "acctSeqNo"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "arqc"    # [B
    .param p8, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2072
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "imksmi":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 84
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    iget-object v0, p0, Lorg/jpos/security/BaseSMAdapter;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 106
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    iget-object v0, p0, Lorg/jpos/security/BaseSMAdapter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 89
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    iget-object v0, p0, Lorg/jpos/security/BaseSMAdapter;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public importKey(SLjava/lang/String;[BLorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/SecureDESKey;
    .locals 6
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "encryptedKey"    # [B
    .param p4, "kek"    # Lorg/jpos/security/SecureDESKey;
    .param p5, "checkParity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "Key Length"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Key Type"

    invoke-direct {v1, v3, v2, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Encrypted Key"

    invoke-direct {v1, v3, v2, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Key-Encrypting Key"

    invoke-direct {v1, v3, v2, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "Check Parity"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 208
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Import Key"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 209
    const/4 v2, 0x0

    .line 211
    .local v2, "result":Lorg/jpos/security/SecureDESKey;
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lorg/jpos/security/BaseSMAdapter;->importKeyImpl(SLjava/lang/String;[BLorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/SecureDESKey;

    move-result-object v3

    move-object v2, v3

    .line 212
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Imported Key"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 218
    nop

    .line 219
    return-object v2

    .line 217
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 213
    :catch_0
    move-exception v3

    .line 214
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 215
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/SecureDESKey;
    .end local p1    # "keyLength":S
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "encryptedKey":[B
    .end local p4    # "kek":Lorg/jpos/security/SecureDESKey;
    .end local p5    # "checkParity":Z
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/SecureDESKey;
    .restart local p1    # "keyLength":S
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "encryptedKey":[B
    .restart local p4    # "kek":Lorg/jpos/security/SecureDESKey;
    .restart local p5    # "checkParity":Z
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 218
    throw v3
.end method

.method public importKey(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;Z)Lorg/jpos/security/SecureKey;
    .locals 6
    .param p1, "kek"    # Lorg/jpos/security/SecureKey;
    .param p2, "key"    # Lorg/jpos/security/SecureKey;
    .param p3, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .param p4, "checkParity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Key-Encrypting Key"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Encrypted Key"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Key Specification"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Check Parity"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 231
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Import Key"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "result":Lorg/jpos/security/SecureKey;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/BaseSMAdapter;->importKeyImpl(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;Z)Lorg/jpos/security/SecureKey;

    move-result-object v3

    move-object v2, v3

    .line 235
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Imported Key"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 241
    nop

    .line 242
    return-object v2

    .line 240
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 236
    :catch_0
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 238
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/SecureKey;
    .end local p1    # "kek":Lorg/jpos/security/SecureKey;
    .end local p2    # "key":Lorg/jpos/security/SecureKey;
    .end local p3    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    .end local p4    # "checkParity":Z
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/SecureKey;
    .restart local p1    # "kek":Lorg/jpos/security/SecureKey;
    .restart local p2    # "key":Lorg/jpos/security/SecureKey;
    .restart local p3    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    .restart local p4    # "checkParity":Z
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 241
    throw v3
.end method

.method protected importKeyImpl(SLjava/lang/String;[BLorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/SecureDESKey;
    .locals 3
    .param p1, "keyLength"    # S
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "encryptedKey"    # [B
    .param p4, "kek"    # Lorg/jpos/security/SecureDESKey;
    .param p5, "checkParity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1527
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected importKeyImpl(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;Z)Lorg/jpos/security/SecureKey;
    .locals 3
    .param p1, "kek"    # Lorg/jpos/security/SecureKey;
    .param p2, "key"    # Lorg/jpos/security/SecureKey;
    .param p3, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .param p4, "checkParity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1542
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public importPIN(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 333
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "PIN under Data Key 1"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Data Key 1"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 337
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Import PIN"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 338
    const/4 v2, 0x0

    .line 340
    .local v2, "result":Lorg/jpos/security/EncryptedPIN;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/BaseSMAdapter;->importPINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;)Lorg/jpos/security/EncryptedPIN;

    move-result-object v3

    move-object v2, v3

    .line 341
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "PIN under LMK"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 347
    nop

    .line 348
    return-object v2

    .line 346
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 342
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 344
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .end local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "kd1":Ljava/lang/Object;, "TT;"
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .restart local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "kd1":Ljava/lang/Object;, "TT;"
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 347
    throw v3
.end method

.method public importPIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;)Lorg/jpos/security/EncryptedPIN;
    .locals 1
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 378
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "bdk":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jpos/security/BaseSMAdapter;->importPIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Z)Lorg/jpos/security/EncryptedPIN;

    move-result-object v0

    return-object v0
.end method

.method public importPIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Z)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p4, "tdes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;Z)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 384
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "bdk":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "PIN under Derived Unique Key"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Key Serial Number"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Base Derivation Key"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 389
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Import PIN"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 390
    const/4 v2, 0x0

    .line 392
    .local v2, "result":Lorg/jpos/security/EncryptedPIN;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/BaseSMAdapter;->importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Z)Lorg/jpos/security/EncryptedPIN;

    move-result-object v3

    move-object v2, v3

    .line 393
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "PIN under LMK"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 399
    nop

    .line 400
    return-object v2

    .line 398
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 394
    :catch_0
    move-exception v3

    .line 395
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 396
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .end local p1    # "pinUnderDuk":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "ksn":Lorg/jpos/security/KeySerialNumber;
    .end local p3    # "bdk":Ljava/lang/Object;, "TT;"
    .end local p4    # "tdes":Z
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .restart local p1    # "pinUnderDuk":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "ksn":Lorg/jpos/security/KeySerialNumber;
    .restart local p3    # "bdk":Ljava/lang/Object;, "TT;"
    .restart local p4    # "tdes":Z
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 399
    throw v3
.end method

.method protected importPINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;)Lorg/jpos/security/EncryptedPIN;
    .locals 3
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1599
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;)Lorg/jpos/security/EncryptedPIN;
    .locals 1
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1627
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "bdk":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jpos/security/BaseSMAdapter;->importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Z)Lorg/jpos/security/EncryptedPIN;

    move-result-object v0

    return-object v0
.end method

.method protected importPINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Z)Lorg/jpos/security/EncryptedPIN;
    .locals 3
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p4, "tdes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;Z)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1641
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "bdk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printPIN(Ljava/lang/String;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "template"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 487
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "kd1":Ljava/lang/Object;, "TT;"
    .local p5, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    const-string v4, "parameter"

    const-string v5, "account number"

    invoke-direct {v1, v4, v5, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p2, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    const-string v5, "PIN under Key data 1"

    invoke-direct {v1, v4, v5, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    if-eqz p3, :cond_2

    .line 491
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Key data 1"

    invoke-direct {v1, v4, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_2
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, p4

    :goto_2
    const-string v3, "Template"

    invoke-direct {v1, v4, v3, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    if-eqz p5, :cond_4

    .line 494
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Fields"

    invoke-direct {v1, v4, v2, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_4
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 497
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Print PIN"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 499
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lorg/jpos/security/BaseSMAdapter;->printPINImpl(Ljava/lang/String;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 500
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 502
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_3

    :cond_5
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .end local p3    # "kd1":Ljava/lang/Object;, "TT;"
    .end local p4    # "template":Ljava/lang/String;
    .end local p5    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .restart local p3    # "kd1":Ljava/lang/Object;, "TT;"
    .restart local p4    # "template":Ljava/lang/String;
    .restart local p5    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 505
    throw v2
.end method

.method protected printPINImpl(Ljava/lang/String;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "template"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1714
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "kd1":Ljava/lang/Object;, "TT;"
    .local p5, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    iput-object p1, p0, Lorg/jpos/security/BaseSMAdapter;->cfg:Lorg/jpos/core/Configuration;

    .line 74
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 78
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    iput-object p1, p0, Lorg/jpos/security/BaseSMAdapter;->logger:Lorg/jpos/util/Logger;

    .line 79
    iput-object p2, p0, Lorg/jpos/security/BaseSMAdapter;->realm:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 98
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    iput-object p1, p0, Lorg/jpos/security/BaseSMAdapter;->name:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s-m-adapter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public translateKeyFromOldLMK(Lorg/jpos/security/SecureDESKey;)Lorg/jpos/security/SecureDESKey;
    .locals 6
    .param p1, "kd"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1284
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Key under old LMK"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1287
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Translate Key from old to new LMK"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1288
    const/4 v2, 0x0

    .line 1290
    .local v2, "result":Lorg/jpos/security/SecureDESKey;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/security/BaseSMAdapter;->translateKeyFromOldLMKImpl(Lorg/jpos/security/SecureDESKey;)Lorg/jpos/security/SecureDESKey;

    move-result-object v3

    move-object v2, v3

    .line 1291
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Translated Key under new LMK"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1297
    nop

    .line 1298
    return-object v2

    .line 1296
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1292
    :catch_0
    move-exception v3

    .line 1293
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1294
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/SecureDESKey;
    .end local p1    # "kd":Lorg/jpos/security/SecureDESKey;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/SecureDESKey;
    .restart local p1    # "kd":Lorg/jpos/security/SecureDESKey;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1297
    throw v3
.end method

.method public translateKeyFromOldLMK(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .locals 6
    .param p1, "key"    # Lorg/jpos/security/SecureKey;
    .param p2, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1303
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Key under old LMK"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Key Specification"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1307
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Translate Key from old to new LMK"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1308
    const/4 v2, 0x0

    .line 1310
    .local v2, "result":Lorg/jpos/security/SecureKey;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/BaseSMAdapter;->translateKeyFromOldLMKImpl(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;

    move-result-object v3

    move-object v2, v3

    .line 1311
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Translated Key under new LMK"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1317
    nop

    .line 1318
    return-object v2

    .line 1316
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1312
    :catch_0
    move-exception v3

    .line 1313
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1314
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/SecureKey;
    .end local p1    # "key":Lorg/jpos/security/SecureKey;
    .end local p2    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1316
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/SecureKey;
    .restart local p1    # "key":Lorg/jpos/security/SecureKey;
    .restart local p2    # "keySpec":Lorg/jpos/security/SecureKeySpec;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1317
    throw v3
.end method

.method protected translateKeyFromOldLMKImpl(Lorg/jpos/security/SecureDESKey;)Lorg/jpos/security/SecureDESKey;
    .locals 3
    .param p1, "kd"    # Lorg/jpos/security/SecureDESKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2163
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected translateKeyFromOldLMKImpl(Lorg/jpos/security/SecureKey;Lorg/jpos/security/SecureKeySpec;)Lorg/jpos/security/SecureKey;
    .locals 3
    .param p1, "key"    # Lorg/jpos/security/SecureKey;
    .param p2, "keySpec"    # Lorg/jpos/security/SecureKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2175
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public translateKeyScheme(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/KeyScheme;)Lorg/jpos/security/SecureDESKey;
    .locals 6
    .param p1, "key"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "destKeyScheme"    # Lorg/jpos/security/KeyScheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "Key"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Destination Key Scheme"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 184
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Translate Key Scheme"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 185
    const/4 v2, 0x0

    .line 187
    .local v2, "result":Lorg/jpos/security/SecureDESKey;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jpos/security/BaseSMAdapter;->translateKeySchemeImpl(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/KeyScheme;)Lorg/jpos/security/SecureDESKey;

    move-result-object v3

    move-object v2, v3

    .line 188
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v5, "result"

    invoke-direct {v3, v5, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 194
    nop

    .line 195
    return-object v2

    .line 193
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 191
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/SecureDESKey;
    .end local p1    # "key":Lorg/jpos/security/SecureDESKey;
    .end local p2    # "destKeyScheme":Lorg/jpos/security/KeyScheme;
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/SecureDESKey;
    .restart local p1    # "key":Lorg/jpos/security/SecureDESKey;
    .restart local p2    # "destKeyScheme":Lorg/jpos/security/KeyScheme;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 194
    throw v3
.end method

.method protected translateKeySchemeImpl(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/KeyScheme;)Lorg/jpos/security/SecureDESKey;
    .locals 3
    .param p1, "key"    # Lorg/jpos/security/SecureDESKey;
    .param p2, "destKeyScheme"    # Lorg/jpos/security/KeyScheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1512
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public translatePIN(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "kd2":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "PIN under Data Key 1"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Data Key 1"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Data Key 2"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const-string v4, "Destination PIN Block Format"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 360
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Translate PIN from Data Key 1 to Data Key 2"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 362
    const/4 v2, 0x0

    .line 364
    .local v2, "result":Lorg/jpos/security/EncryptedPIN;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jpos/security/BaseSMAdapter;->translatePINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;

    move-result-object v3

    move-object v2, v3

    .line 365
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "PIN under Data Key 2"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 371
    nop

    .line 372
    return-object v2

    .line 370
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 366
    :catch_0
    move-exception v3

    .line 367
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 368
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .end local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .end local p3    # "kd2":Ljava/lang/Object;, "TT;"
    .end local p4    # "destinationPINBlockFormat":B
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .restart local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .restart local p3    # "kd2":Ljava/lang/Object;, "TT;"
    .restart local p4    # "destinationPINBlockFormat":B
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 371
    throw v3
.end method

.method public translatePIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .locals 7
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p5, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 406
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "bdk":Ljava/lang/Object;, "TT;"
    .local p4, "kd2":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/BaseSMAdapter;->translatePIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;BZ)Lorg/jpos/security/EncryptedPIN;

    move-result-object v0

    return-object v0
.end method

.method public translatePIN(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;BZ)Lorg/jpos/security/EncryptedPIN;
    .locals 6
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p5, "destinationPINBlockFormat"    # B
    .param p6, "tdes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;TT;BZ)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 412
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "bdk":Ljava/lang/Object;, "TT;"
    .local p4, "kd2":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "PIN under Derived Unique Key"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Key Serial Number"

    invoke-direct {v1, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Base Derivation Key"

    invoke-direct {v1, v2, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Data Key 2"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const-string v4, "Destination PIN Block Format"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 419
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Translate PIN"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 420
    const/4 v2, 0x0

    .line 422
    .local v2, "result":Lorg/jpos/security/EncryptedPIN;
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lorg/jpos/security/BaseSMAdapter;->translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;BZ)Lorg/jpos/security/EncryptedPIN;

    move-result-object v3

    move-object v2, v3

    .line 423
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "PIN under Data Key 2"

    invoke-direct {v3, v4, v5, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 429
    nop

    .line 430
    return-object v2

    .line 428
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 424
    :catch_0
    move-exception v3

    .line 425
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 426
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .end local p1    # "pinUnderDuk":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "ksn":Lorg/jpos/security/KeySerialNumber;
    .end local p3    # "bdk":Ljava/lang/Object;, "TT;"
    .end local p4    # "kd2":Ljava/lang/Object;, "TT;"
    .end local p5    # "destinationPINBlockFormat":B
    .end local p6    # "tdes":Z
    :goto_0
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "result":Lorg/jpos/security/EncryptedPIN;
    .restart local p1    # "pinUnderDuk":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "ksn":Lorg/jpos/security/KeySerialNumber;
    .restart local p3    # "bdk":Ljava/lang/Object;, "TT;"
    .restart local p4    # "kd2":Ljava/lang/Object;, "TT;"
    .restart local p5    # "destinationPINBlockFormat":B
    .restart local p6    # "tdes":Z
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 429
    throw v3
.end method

.method public translatePINGenerateSM_MAC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/PaddingMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/javatuples/Pair;
    .locals 17
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p3, "padm"    # Lorg/jpos/security/PaddingMethod;
    .param p5, "accountNo"    # Ljava/lang/String;
    .param p6, "acctSeqNo"    # Ljava/lang/String;
    .param p7, "atc"    # [B
    .param p8, "arqc"    # [B
    .param p9, "data"    # [B
    .param p10, "currentPIN"    # Lorg/jpos/security/EncryptedPIN;
    .param p11, "newPIN"    # Lorg/jpos/security/EncryptedPIN;
    .param p15, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "Lorg/jpos/security/PaddingMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;B)",
            "Lorg/javatuples/Pair<",
            "Lorg/jpos/security/EncryptedPIN;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1118
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p4, "imksmi":Ljava/lang/Object;, "TT;"
    .local p12, "kd1":Ljava/lang/Object;, "TT;"
    .local p13, "imksmc":Ljava/lang/Object;, "TT;"
    .local p14, "imkac":Ljava/lang/Object;, "TT;"
    move-object/from16 v1, p3

    move-object/from16 v2, p14

    const-string v0, "result"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v3, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v5, "parameter"

    const-string v6, "mkd method"

    move-object/from16 v7, p1

    invoke-direct {v4, v5, v6, v7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v6, "skd method"

    move-object/from16 v8, p2

    invoke-direct {v4, v5, v6, v8}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    if-eqz v1, :cond_0

    .line 1122
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v6, "padding method"

    invoke-direct {v4, v5, v6, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    :cond_0
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v6, "imk-smi"

    move-object/from16 v9, p4

    invoke-direct {v4, v5, v6, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v6, "account number"

    move-object/from16 v10, p5

    invoke-direct {v4, v5, v6, v10}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v6, "accnt seq no"

    move-object/from16 v11, p6

    invoke-direct {v4, v5, v6, v11}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v6, ""

    if-nez p7, :cond_1

    move-object v12, v6

    goto :goto_0

    :cond_1
    invoke-static/range {p7 .. p7}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v12

    :goto_0
    const-string v13, "atc"

    invoke-direct {v4, v5, v13, v12}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    if-nez p8, :cond_2

    move-object v12, v6

    goto :goto_1

    :cond_2
    invoke-static/range {p8 .. p8}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v12

    :goto_1
    const-string v13, "arqc"

    invoke-direct {v4, v5, v13, v12}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    if-nez p9, :cond_3

    move-object v12, v6

    goto :goto_2

    :cond_3
    invoke-static/range {p9 .. p9}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v12

    :goto_2
    const-string v13, "data"

    invoke-direct {v4, v5, v13, v12}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v12, "Current Encrypted PIN"

    move-object/from16 v13, p10

    invoke-direct {v4, v5, v12, v13}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v12, "New Encrypted PIN"

    move-object/from16 v14, p11

    invoke-direct {v4, v5, v12, v14}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v12, "Source PIN Encryption Key"

    move-object/from16 v15, p12

    invoke-direct {v4, v5, v12, v15}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v12, "imk-smc"

    move-object/from16 v1, p13

    invoke-direct {v4, v5, v12, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    if-eqz v2, :cond_4

    .line 1134
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v12, "imk-ac"

    invoke-direct {v4, v5, v12, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_4
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    invoke-static/range {p15 .. p15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    const-string v1, "Destination PIN Block Format"

    invoke-direct {v4, v5, v1, v12}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v4, "s-m-operation"

    move-object/from16 v5, p0

    invoke-direct {v1, v5, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 1137
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v4, Lorg/jpos/util/SimpleMsg;

    const-string v12, "command"

    const-string v2, "Translate PIN block format and Generate Secure Messaging MAC"

    invoke-direct {v4, v12, v2, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1141
    :try_start_0
    invoke-virtual/range {p0 .. p15}, Lorg/jpos/security/BaseSMAdapter;->translatePINGenerateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/PaddingMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/javatuples/Pair;

    move-result-object v2

    .line 1145
    .local v2, "r":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<Lorg/jpos/security/EncryptedPIN;[B>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .local v4, "cmdResults":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v12, Lorg/jpos/util/SimpleMsg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v3

    .end local v3    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .local v16, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    :try_start_1
    const-string v3, "Translated PIN block"

    invoke-virtual {v2}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v12, v0, v3, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v5, "Generated MAC"

    invoke-virtual {v2}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-direct {v3, v0, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "results"

    const-string v5, "Complex results"

    invoke-direct {v0, v3, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1149
    nop

    .line 1154
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1149
    return-object v2

    .line 1150
    .end local v2    # "r":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<Lorg/jpos/security/EncryptedPIN;[B>;"
    .end local v4    # "cmdResults":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1154
    .end local v16    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v3    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v16    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    goto :goto_6

    .line 1150
    .end local v16    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v3    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1151
    .end local v3    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    :goto_4
    :try_start_2
    invoke-virtual {v1, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1152
    instance-of v2, v0, Lorg/jpos/security/SMException;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Lorg/jpos/security/SMException;

    goto :goto_5

    :cond_6
    new-instance v2, Lorg/jpos/security/SMException;

    invoke-direct {v2, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v16    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .end local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .end local p3    # "padm":Lorg/jpos/security/PaddingMethod;
    .end local p4    # "imksmi":Ljava/lang/Object;, "TT;"
    .end local p5    # "accountNo":Ljava/lang/String;
    .end local p6    # "acctSeqNo":Ljava/lang/String;
    .end local p7    # "atc":[B
    .end local p8    # "arqc":[B
    .end local p9    # "data":[B
    .end local p10    # "currentPIN":Lorg/jpos/security/EncryptedPIN;
    .end local p11    # "newPIN":Lorg/jpos/security/EncryptedPIN;
    .end local p12    # "kd1":Ljava/lang/Object;, "TT;"
    .end local p13    # "imksmc":Ljava/lang/Object;, "TT;"
    .end local p14    # "imkac":Ljava/lang/Object;, "TT;"
    .end local p15    # "destinationPINBlockFormat":B
    :goto_5
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1154
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v16    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .restart local p3    # "padm":Lorg/jpos/security/PaddingMethod;
    .restart local p4    # "imksmi":Ljava/lang/Object;, "TT;"
    .restart local p5    # "accountNo":Ljava/lang/String;
    .restart local p6    # "acctSeqNo":Ljava/lang/String;
    .restart local p7    # "atc":[B
    .restart local p8    # "arqc":[B
    .restart local p9    # "data":[B
    .restart local p10    # "currentPIN":Lorg/jpos/security/EncryptedPIN;
    .restart local p11    # "newPIN":Lorg/jpos/security/EncryptedPIN;
    .restart local p12    # "kd1":Ljava/lang/Object;, "TT;"
    .restart local p13    # "imksmc":Ljava/lang/Object;, "TT;"
    .restart local p14    # "imkac":Ljava/lang/Object;, "TT;"
    .restart local p15    # "destinationPINBlockFormat":B
    :catchall_1
    move-exception v0

    :goto_6
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1155
    throw v0
.end method

.method protected translatePINGenerateSM_MACImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Lorg/jpos/security/PaddingMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/EncryptedPIN;Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/javatuples/Pair;
    .locals 3
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p3, "padm"    # Lorg/jpos/security/PaddingMethod;
    .param p5, "accountNo"    # Ljava/lang/String;
    .param p6, "acctSeqNo"    # Ljava/lang/String;
    .param p7, "atc"    # [B
    .param p8, "arqc"    # [B
    .param p9, "data"    # [B
    .param p10, "currentPIN"    # Lorg/jpos/security/EncryptedPIN;
    .param p11, "newPIN"    # Lorg/jpos/security/EncryptedPIN;
    .param p15, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "Lorg/jpos/security/PaddingMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;B)",
            "Lorg/javatuples/Pair<",
            "Lorg/jpos/security/EncryptedPIN;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2101
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p4, "imksmi":Ljava/lang/Object;, "TT;"
    .local p12, "kd1":Ljava/lang/Object;, "TT;"
    .local p13, "imksmc":Ljava/lang/Object;, "TT;"
    .local p14, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected translatePINImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .locals 3
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1613
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "kd2":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;B)Lorg/jpos/security/EncryptedPIN;
    .locals 7
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p5, "destinationPINBlockFormat"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;TT;B)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1657
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "bdk":Ljava/lang/Object;, "TT;"
    .local p4, "kd2":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jpos/security/BaseSMAdapter;->translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;BZ)Lorg/jpos/security/EncryptedPIN;

    move-result-object v0

    return-object v0
.end method

.method protected translatePINImpl(Lorg/jpos/security/EncryptedPIN;Lorg/jpos/security/KeySerialNumber;Ljava/lang/Object;Ljava/lang/Object;BZ)Lorg/jpos/security/EncryptedPIN;
    .locals 3
    .param p1, "pinUnderDuk"    # Lorg/jpos/security/EncryptedPIN;
    .param p2, "ksn"    # Lorg/jpos/security/KeySerialNumber;
    .param p5, "destinationPINBlockFormat"    # B
    .param p6, "tdes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "Lorg/jpos/security/KeySerialNumber;",
            "TT;TT;BZ)",
            "Lorg/jpos/security/EncryptedPIN;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1674
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "bdk":Ljava/lang/Object;, "TT;"
    .local p4, "kd2":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyARQC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[B)Z
    .locals 13
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p4, "accoutNo"    # Ljava/lang/String;
    .param p5, "acctSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "txnData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 985
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 986
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "mkd method"

    move-object v4, p1

    invoke-direct {v0, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "skd method"

    move-object v5, p2

    invoke-direct {v0, v2, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "imk-ac"

    move-object/from16 v6, p3

    invoke-direct {v0, v2, v3, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "account number"

    move-object/from16 v7, p4

    invoke-direct {v0, v2, v3, v7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "accnt seq no"

    move-object/from16 v8, p5

    invoke-direct {v0, v2, v3, v8}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p6, :cond_0

    move-object v9, v3

    goto :goto_0

    :cond_0
    invoke-static/range {p6 .. p6}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_0
    const-string v10, "arqc"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p7, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    invoke-static/range {p7 .. p7}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const-string v10, "atc"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p8, :cond_2

    move-object v9, v3

    goto :goto_2

    :cond_2
    invoke-static/range {p8 .. p8}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const-string v10, "upn"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p9, :cond_3

    goto :goto_3

    :cond_3
    invoke-static/range {p9 .. p9}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v9, "txn data"

    invoke-direct {v0, v2, v9, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    move-object v3, p0

    invoke-direct {v0, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    move-object v2, v0

    .line 996
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v9, "command"

    const-string v10, "Verify ARQC/TC/AAC"

    invoke-direct {v0, v9, v10, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 998
    :try_start_0
    invoke-virtual/range {p0 .. p9}, Lorg/jpos/security/BaseSMAdapter;->verifyARQCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[B)Z

    move-result v0

    .line 999
    .local v0, "r":Z
    new-instance v9, Lorg/jpos/util/SimpleMsg;

    const-string v10, "result"

    const-string v11, "Verification status"

    if-eqz v0, :cond_4

    const-string v12, "valid"

    goto :goto_4

    :cond_4
    const-string v12, "invalid"

    :goto_4
    invoke-direct {v9, v10, v11, v12}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    nop

    .line 1005
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1000
    return v0

    .line 1005
    .end local v0    # "r":Z
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1003
    instance-of v9, v0, Lorg/jpos/security/SMException;

    if-eqz v9, :cond_5

    move-object v9, v0

    check-cast v9, Lorg/jpos/security/SMException;

    goto :goto_5

    :cond_5
    new-instance v9, Lorg/jpos/security/SMException;

    invoke-direct {v9, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .end local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .end local p3    # "imkac":Ljava/lang/Object;, "TT;"
    .end local p4    # "accoutNo":Ljava/lang/String;
    .end local p5    # "acctSeqNo":Ljava/lang/String;
    .end local p6    # "arqc":[B
    .end local p7    # "atc":[B
    .end local p8    # "upn":[B
    .end local p9    # "txnData":[B
    :goto_5
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .restart local p3    # "imkac":Ljava/lang/Object;, "TT;"
    .restart local p4    # "accoutNo":Ljava/lang/String;
    .restart local p5    # "acctSeqNo":Ljava/lang/String;
    .restart local p6    # "arqc":[B
    .restart local p7    # "atc":[B
    .restart local p8    # "upn":[B
    .restart local p9    # "txnData":[B
    :goto_6
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1006
    throw v0
.end method

.method public verifyARQCGenerateARPC(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 14
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p4, "accoutNo"    # Ljava/lang/String;
    .param p5, "acctSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "txnData"    # [B
    .param p10, "arpcMethod"    # Lorg/jpos/security/ARPCMethod;
    .param p11, "arc"    # [B
    .param p12, "propAuthData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Lorg/jpos/security/ARPCMethod;",
            "[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1050
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 1051
    .local v1, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "mkd method"

    move-object v4, p1

    invoke-direct {v0, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "skd method"

    move-object/from16 v5, p2

    invoke-direct {v0, v2, v3, v5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "imk-ac"

    move-object/from16 v6, p3

    invoke-direct {v0, v2, v3, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "account number"

    move-object/from16 v7, p4

    invoke-direct {v0, v2, v3, v7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, "accnt seq no"

    move-object/from16 v8, p5

    invoke-direct {v0, v2, v3, v8}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p6, :cond_0

    move-object v9, v3

    goto :goto_0

    :cond_0
    invoke-static/range {p6 .. p6}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_0
    const-string v10, "arqc"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p7, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    invoke-static/range {p7 .. p7}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const-string v10, "atc"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p8, :cond_2

    move-object v9, v3

    goto :goto_2

    :cond_2
    invoke-static/range {p8 .. p8}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const-string v10, "upn"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p9, :cond_3

    move-object v9, v3

    goto :goto_3

    :cond_3
    invoke-static/range {p9 .. p9}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string v10, "txn data"

    invoke-direct {v0, v2, v10, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v9, "arpc gen. method"

    move-object/from16 v10, p10

    invoke-direct {v0, v2, v9, v10}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p11, :cond_4

    move-object v9, v3

    goto :goto_4

    :cond_4
    invoke-static/range {p11 .. p11}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_4
    const-string v11, "auth. rc"

    invoke-direct {v0, v2, v11, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    if-nez p12, :cond_5

    move-object v9, v3

    goto :goto_5

    .line 1063
    :cond_5
    invoke-static/range {p12 .. p12}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v9

    :goto_5
    const-string v11, "prop auth. data"

    invoke-direct {v0, v2, v11, v9}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1062
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    move-object v9, p0

    invoke-direct {v0, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    move-object v2, v0

    .line 1066
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    new-instance v0, Lorg/jpos/util/SimpleMsg;

    const-string v11, "command"

    const-string v12, "Genarate ARPC"

    invoke-direct {v0, v11, v12, v1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1068
    :try_start_0
    invoke-virtual/range {p0 .. p12}, Lorg/jpos/security/BaseSMAdapter;->verifyARQCGenerateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B

    move-result-object v0

    .line 1072
    .local v0, "result":[B
    new-instance v11, Lorg/jpos/util/SimpleMsg;

    const-string v12, "result"

    const-string v13, "ARPC"

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-direct {v11, v12, v13, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v11}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    nop

    .line 1078
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1073
    return-object v0

    .line 1078
    .end local v0    # "result":[B
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 1076
    instance-of v3, v0, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_7

    move-object v3, v0

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_7

    :cond_7
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v0}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .end local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .end local p3    # "imkac":Ljava/lang/Object;, "TT;"
    .end local p4    # "accoutNo":Ljava/lang/String;
    .end local p5    # "acctSeqNo":Ljava/lang/String;
    .end local p6    # "arqc":[B
    .end local p7    # "atc":[B
    .end local p8    # "upn":[B
    .end local p9    # "txnData":[B
    .end local p10    # "arpcMethod":Lorg/jpos/security/ARPCMethod;
    .end local p11    # "arc":[B
    .end local p12    # "propAuthData":[B
    :goto_7
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v2    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p2    # "skdm":Lorg/jpos/security/SKDMethod;
    .restart local p3    # "imkac":Ljava/lang/Object;, "TT;"
    .restart local p4    # "accoutNo":Ljava/lang/String;
    .restart local p5    # "acctSeqNo":Ljava/lang/String;
    .restart local p6    # "arqc":[B
    .restart local p7    # "atc":[B
    .restart local p8    # "upn":[B
    .restart local p9    # "txnData":[B
    .restart local p10    # "arpcMethod":Lorg/jpos/security/ARPCMethod;
    .restart local p11    # "arc":[B
    .restart local p12    # "propAuthData":[B
    :goto_8
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 1079
    throw v0
.end method

.method protected verifyARQCGenerateARPCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLorg/jpos/security/ARPCMethod;[B[B)[B
    .locals 3
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "acctSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "transData"    # [B
    .param p10, "arpcMethod"    # Lorg/jpos/security/ARPCMethod;
    .param p11, "arc"    # [B
    .param p12, "propAuthData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Lorg/jpos/security/ARPCMethod;",
            "[B[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2051
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected verifyARQCImpl(Lorg/jpos/security/MKDMethod;Lorg/jpos/security/SKDMethod;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[B[B)Z
    .locals 3
    .param p1, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p2, "skdm"    # Lorg/jpos/security/SKDMethod;
    .param p4, "accountNo"    # Ljava/lang/String;
    .param p5, "acctSeqNo"    # Ljava/lang/String;
    .param p6, "arqc"    # [B
    .param p7, "atc"    # [B
    .param p8, "upn"    # [B
    .param p9, "txnData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/MKDMethod;",
            "Lorg/jpos/security/SKDMethod;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 2004
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p3, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyCAVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "cavv"    # Ljava/lang/String;
    .param p4, "upn"    # Ljava/lang/String;
    .param p5, "authrc"    # Ljava/lang/String;
    .param p6, "sfarc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 861
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvk":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const-string v5, "cvk"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    const-string v4, "cavv"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "unpredictable number"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "auth rc"

    invoke-direct {v1, v2, v3, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "second factor auth rc"

    invoke-direct {v1, v2, v3, p6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 869
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Verify CAVV/AAV"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 870
    const/4 v2, 0x0

    .line 872
    .local v2, "r":Z
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lorg/jpos/security/BaseSMAdapter;->verifyCAVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    .line 873
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Verification status"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 879
    nop

    .line 880
    return v2

    .line 878
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 874
    :catch_0
    move-exception v3

    .line 875
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 876
    instance-of v4, v3, Lorg/jpos/security/SMException;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/jpos/security/SMException;

    goto :goto_2

    :cond_2
    new-instance v4, Lorg/jpos/security/SMException;

    invoke-direct {v4, v3}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local v2    # "r":Z
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "cvk":Ljava/lang/Object;, "TT;"
    .end local p3    # "cavv":Ljava/lang/String;
    .end local p4    # "upn":Ljava/lang/String;
    .end local p5    # "authrc":Ljava/lang/String;
    .end local p6    # "sfarc":Ljava/lang/String;
    :goto_2
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v2    # "r":Z
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "cvk":Ljava/lang/Object;, "TT;"
    .restart local p3    # "cavv":Ljava/lang/String;
    .restart local p4    # "upn":Ljava/lang/String;
    .restart local p5    # "authrc":Ljava/lang/String;
    .restart local p6    # "sfarc":Ljava/lang/String;
    :goto_3
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 879
    throw v3
.end method

.method protected verifyCAVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "cavv"    # Ljava/lang/String;
    .param p4, "upn"    # Ljava/lang/String;
    .param p5, "authrc"    # Ljava/lang/String;
    .param p6, "sfarc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1929
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyCVC3(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;Ljava/lang/String;)Z
    .locals 7
    .param p2, "accountNo"    # Ljava/lang/String;
    .param p3, "acctSeqNo"    # Ljava/lang/String;
    .param p4, "atc"    # [B
    .param p5, "upn"    # [B
    .param p6, "data"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p8, "cvc3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/MKDMethod;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 957
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p1, "imkcvc3":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 958
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    const-string v4, "parameter"

    const-string v5, "imk-cvc3"

    invoke-direct {v1, v4, v5, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "account number"

    invoke-direct {v1, v4, v3, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "accnt seq no"

    invoke-direct {v1, v4, v3, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p4, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v5, "atc"

    invoke-direct {v1, v4, v5, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p5, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    invoke-static {p5}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v5, "upn"

    invoke-direct {v1, v4, v5, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p6, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p6}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v3, "data"

    invoke-direct {v1, v4, v3, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "mkd method"

    invoke-direct {v1, v4, v2, p7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "cvc3"

    invoke-direct {v1, v4, v2, p8}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 967
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Verify CVC3"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 969
    :try_start_0
    invoke-virtual/range {p0 .. p8}, Lorg/jpos/security/BaseSMAdapter;->verifyCVC3Impl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;Ljava/lang/String;)Z

    move-result v2

    .line 970
    .local v2, "r":Z
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Verification status"

    if-eqz v2, :cond_4

    const-string v6, "valid"

    goto :goto_4

    :cond_4
    const-string v6, "invalid"

    :goto_4
    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    nop

    .line 976
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 971
    return v2

    .line 976
    .end local v2    # "r":Z
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 972
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 974
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_5

    :cond_5
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "imkcvc3":Ljava/lang/Object;, "TT;"
    .end local p2    # "accountNo":Ljava/lang/String;
    .end local p3    # "acctSeqNo":Ljava/lang/String;
    .end local p4    # "atc":[B
    .end local p5    # "upn":[B
    .end local p6    # "data":[B
    .end local p7    # "mkdm":Lorg/jpos/security/MKDMethod;
    .end local p8    # "cvc3":Ljava/lang/String;
    :goto_5
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "imkcvc3":Ljava/lang/Object;, "TT;"
    .restart local p2    # "accountNo":Ljava/lang/String;
    .restart local p3    # "acctSeqNo":Ljava/lang/String;
    .restart local p4    # "atc":[B
    .restart local p5    # "upn":[B
    .restart local p6    # "data":[B
    .restart local p7    # "mkdm":Lorg/jpos/security/MKDMethod;
    .restart local p8    # "cvc3":Ljava/lang/String;
    :goto_6
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 977
    throw v2
.end method

.method protected verifyCVC3Impl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[B[B[BLorg/jpos/security/MKDMethod;Ljava/lang/String;)Z
    .locals 3
    .param p2, "accountNo"    # Ljava/lang/String;
    .param p3, "acctSeqNo"    # Ljava/lang/String;
    .param p4, "atc"    # [B
    .param p5, "upn"    # [B
    .param p6, "data"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .param p8, "cvc3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B",
            "Lorg/jpos/security/MKDMethod;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1984
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p1, "imkcvc3":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyCVD(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p4, "cvv"    # Ljava/lang/String;
    .param p5, "expDate"    # Ljava/lang/String;
    .param p6, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 836
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvkA":Ljava/lang/Object;, "TT;"
    .local p3, "cvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const-string v5, "cvk-a"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    const-string v4, "cvk-b"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "CVV/CVC"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Exp date"

    invoke-direct {v1, v2, v3, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Service code"

    invoke-direct {v1, v2, v3, p6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 844
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Verify CVV/CVC"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 846
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lorg/jpos/security/BaseSMAdapter;->verifyCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 847
    .local v2, "r":Z
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Verification status"

    if-eqz v2, :cond_2

    const-string v6, "valid"

    goto :goto_2

    :cond_2
    const-string v6, "invalid"

    :goto_2
    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    nop

    .line 853
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 848
    return v2

    .line 853
    .end local v2    # "r":Z
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 849
    :catch_0
    move-exception v2

    .line 850
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 851
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_3

    :cond_3
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "cvkA":Ljava/lang/Object;, "TT;"
    .end local p3    # "cvkB":Ljava/lang/Object;, "TT;"
    .end local p4    # "cvv":Ljava/lang/String;
    .end local p5    # "expDate":Ljava/lang/String;
    .end local p6    # "serviceCode":Ljava/lang/String;
    :goto_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "cvkA":Ljava/lang/Object;, "TT;"
    .restart local p3    # "cvkB":Ljava/lang/Object;, "TT;"
    .restart local p4    # "cvv":Ljava/lang/String;
    .restart local p5    # "expDate":Ljava/lang/String;
    .restart local p6    # "serviceCode":Ljava/lang/String;
    :goto_4
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 854
    throw v2
.end method

.method public verifyCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z
    .locals 7
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p4, "cvv"    # Ljava/lang/String;
    .param p5, "expDate"    # Ljava/util/Date;
    .param p6, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 811
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvkA":Ljava/lang/Object;, "TT;"
    .local p3, "cvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const-string v5, "cvk-a"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    const-string v4, "cvk-b"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "CVV/CVC"

    invoke-direct {v1, v2, v3, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Exp date"

    invoke-direct {v1, v2, v3, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "Service code"

    invoke-direct {v1, v2, v3, p6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 819
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Verify CVV/CVC"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 821
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lorg/jpos/security/BaseSMAdapter;->verifyCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z

    move-result v2

    .line 822
    .local v2, "r":Z
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Verification status"

    if-eqz v2, :cond_2

    const-string v6, "valid"

    goto :goto_2

    :cond_2
    const-string v6, "invalid"

    :goto_2
    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    nop

    .line 828
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 823
    return v2

    .line 828
    .end local v2    # "r":Z
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 824
    :catch_0
    move-exception v2

    .line 825
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 826
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_3

    :cond_3
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "cvkA":Ljava/lang/Object;, "TT;"
    .end local p3    # "cvkB":Ljava/lang/Object;, "TT;"
    .end local p4    # "cvv":Ljava/lang/String;
    .end local p5    # "expDate":Ljava/util/Date;
    .end local p6    # "serviceCode":Ljava/lang/String;
    :goto_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "cvkA":Ljava/lang/Object;, "TT;"
    .restart local p3    # "cvkB":Ljava/lang/Object;, "TT;"
    .restart local p4    # "cvv":Ljava/lang/String;
    .restart local p5    # "expDate":Ljava/util/Date;
    .restart local p6    # "serviceCode":Ljava/lang/String;
    :goto_4
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 829
    throw v2
.end method

.method protected verifyCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p4, "cvv"    # Ljava/lang/String;
    .param p5, "expDate"    # Ljava/lang/String;
    .param p6, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1913
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvkA":Ljava/lang/Object;, "TT;"
    .local p3, "cvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected verifyCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p4, "cvv"    # Ljava/lang/String;
    .param p5, "expDate"    # Ljava/util/Date;
    .param p6, "serviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1897
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "cvkA":Ljava/lang/Object;, "TT;"
    .local p3, "cvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyIBMPINOffset(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "offset"    # Ljava/lang/String;
    .param p5, "decTab"    # Ljava/lang/String;
    .param p6, "pinValData"    # Ljava/lang/String;
    .param p7, "minPinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 680
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "pvk":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "account number"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN under Data Key 1"

    invoke-direct {v1, v3, v2, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Data Key 1"

    invoke-direct {v1, v3, v2, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PVK"

    invoke-direct {v1, v3, v2, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getPINBlockFormat()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const-string v4, "Pin block format"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "decimalisation table"

    invoke-direct {v1, v3, v2, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN validation data"

    invoke-direct {v1, v3, v2, p6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "minimum PIN length"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "offset"

    invoke-direct {v1, v3, v2, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 691
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Verify PIN offset"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 694
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lorg/jpos/security/BaseSMAdapter;->verifyIBMPINOffsetImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 696
    .local v2, "r":Z
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Verification status"

    if-eqz v2, :cond_0

    const-string v6, "valid"

    goto :goto_0

    :cond_0
    const-string v6, "invalid"

    :goto_0
    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    nop

    .line 702
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 697
    return v2

    .line 702
    .end local v2    # "r":Z
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 698
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 700
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .end local p3    # "pvk":Ljava/lang/Object;, "TT;"
    .end local p4    # "offset":Ljava/lang/String;
    .end local p5    # "decTab":Ljava/lang/String;
    .end local p6    # "pinValData":Ljava/lang/String;
    .end local p7    # "minPinLen":I
    :goto_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .restart local p3    # "pvk":Ljava/lang/Object;, "TT;"
    .restart local p4    # "offset":Ljava/lang/String;
    .restart local p5    # "decTab":Ljava/lang/String;
    .restart local p6    # "pinValData":Ljava/lang/String;
    .restart local p7    # "minPinLen":I
    :goto_2
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 703
    throw v2
.end method

.method protected verifyIBMPINOffsetImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pinUnderKd"    # Lorg/jpos/security/EncryptedPIN;
    .param p4, "offset"    # Ljava/lang/String;
    .param p5, "decTab"    # Ljava/lang/String;
    .param p6, "pinValData"    # Ljava/lang/String;
    .param p7, "minPinLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1817
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd":Ljava/lang/Object;, "TT;"
    .local p3, "pvk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPVV(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;)Z
    .locals 7
    .param p1, "pinUnderKd1"    # Lorg/jpos/security/EncryptedPIN;
    .param p5, "pvki"    # I
    .param p6, "pvv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 579
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd1":Ljava/lang/Object;, "TT;"
    .local p3, "pvkA":Ljava/lang/Object;, "TT;"
    .local p4, "pvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-virtual {p1}, Lorg/jpos/security/EncryptedPIN;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parameter"

    const-string v4, "account number"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "PIN under Data Key 1"

    invoke-direct {v1, v3, v2, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "Data Key 1"

    invoke-direct {v1, v3, v2, p2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, ""

    if-nez p3, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    const-string v5, "PVK-A"

    invoke-direct {v1, v3, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p4

    :goto_1
    const-string v4, "PVK-B"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "pvki"

    invoke-direct {v1, v3, v4, v2}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "pvv"

    invoke-direct {v1, v3, v2, p6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 588
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Verify a PIN Using the VISA Method"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 591
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lorg/jpos/security/BaseSMAdapter;->verifyPVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;)Z

    move-result v2

    .line 592
    .local v2, "r":Z
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Verification status"

    if-eqz v2, :cond_2

    const-string v6, "valid"

    goto :goto_2

    :cond_2
    const-string v6, "invalid"

    :goto_2
    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    nop

    .line 598
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 593
    return v2

    .line 598
    .end local v2    # "r":Z
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 594
    :catch_0
    move-exception v2

    .line 595
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 596
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_3

    :cond_3
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .end local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .end local p3    # "pvkA":Ljava/lang/Object;, "TT;"
    .end local p4    # "pvkB":Ljava/lang/Object;, "TT;"
    .end local p5    # "pvki":I
    .end local p6    # "pvv":Ljava/lang/String;
    :goto_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "pinUnderKd1":Lorg/jpos/security/EncryptedPIN;
    .restart local p2    # "kd1":Ljava/lang/Object;, "TT;"
    .restart local p3    # "pvkA":Ljava/lang/Object;, "TT;"
    .restart local p4    # "pvkB":Ljava/lang/Object;, "TT;"
    .restart local p5    # "pvki":I
    .restart local p6    # "pvv":Ljava/lang/String;
    :goto_4
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 599
    throw v2
.end method

.method protected verifyPVVImpl(Lorg/jpos/security/EncryptedPIN;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;)Z
    .locals 3
    .param p1, "pinUnderKd"    # Lorg/jpos/security/EncryptedPIN;
    .param p5, "pvki"    # I
    .param p6, "pvv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/security/EncryptedPIN;",
            "TT;TT;TT;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1763
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "kd":Ljava/lang/Object;, "TT;"
    .local p3, "pvkA":Ljava/lang/Object;, "TT;"
    .local p4, "pvkB":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifydCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .locals 7
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "dcvv"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/lang/String;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/jpos/security/MKDMethod;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 915
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const-string v5, "imk-ac"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v4, "dCVV"

    invoke-direct {v1, v2, v4, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v4, "Exp date"

    invoke-direct {v1, v2, v4, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v4, "Service code"

    invoke-direct {v1, v2, v4, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p6}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "atc"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "mkd method"

    invoke-direct {v1, v2, v3, p7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 924
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Verify dCVV"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 926
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lorg/jpos/security/BaseSMAdapter;->verifydCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z

    move-result v2

    .line 927
    .local v2, "r":Z
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Verification status"

    if-eqz v2, :cond_2

    const-string v6, "valid"

    goto :goto_2

    :cond_2
    const-string v6, "invalid"

    :goto_2
    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    nop

    .line 933
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 928
    return v2

    .line 933
    .end local v2    # "r":Z
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 929
    :catch_0
    move-exception v2

    .line 930
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 931
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_3

    :cond_3
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "imkac":Ljava/lang/Object;, "TT;"
    .end local p3    # "dcvv":Ljava/lang/String;
    .end local p4    # "expDate":Ljava/lang/String;
    .end local p5    # "serviceCode":Ljava/lang/String;
    .end local p6    # "atc":[B
    .end local p7    # "mkdm":Lorg/jpos/security/MKDMethod;
    :goto_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "imkac":Ljava/lang/Object;, "TT;"
    .restart local p3    # "dcvv":Ljava/lang/String;
    .restart local p4    # "expDate":Ljava/lang/String;
    .restart local p5    # "serviceCode":Ljava/lang/String;
    .restart local p6    # "atc":[B
    .restart local p7    # "mkdm":Lorg/jpos/security/MKDMethod;
    :goto_4
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 934
    throw v2
.end method

.method public verifydCVV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .locals 7
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "dcvv"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/util/Date;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/jpos/security/MKDMethod;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 888
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .local v0, "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v2, "parameter"

    const-string v3, "account number"

    invoke-direct {v1, v2, v3, p1}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, ""

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const-string v5, "imk-ac"

    invoke-direct {v1, v2, v5, v4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v4, "dCVV"

    invoke-direct {v1, v2, v4, p3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v4, "Exp date"

    invoke-direct {v1, v2, v4, p4}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v4, "Service code"

    invoke-direct {v1, v2, v4, p5}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p6}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "atc"

    invoke-direct {v1, v2, v4, v3}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance v1, Lorg/jpos/util/SimpleMsg;

    const-string v3, "mkd method"

    invoke-direct {v1, v2, v3, p7}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "s-m-operation"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 897
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Lorg/jpos/util/SimpleMsg;

    const-string v3, "command"

    const-string v4, "Verify dCVV"

    invoke-direct {v2, v3, v4, v0}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 899
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lorg/jpos/security/BaseSMAdapter;->verifydCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z

    move-result v2

    .line 900
    .local v2, "r":Z
    new-instance v3, Lorg/jpos/util/SimpleMsg;

    const-string v4, "result"

    const-string v5, "Verification status"

    if-eqz v2, :cond_2

    const-string v6, "valid"

    goto :goto_2

    :cond_2
    const-string v6, "invalid"

    :goto_2
    invoke-direct {v3, v4, v5, v6}, Lorg/jpos/util/SimpleMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    nop

    .line 906
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 901
    return v2

    .line 906
    .end local v2    # "r":Z
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 902
    :catch_0
    move-exception v2

    .line 903
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 904
    instance-of v3, v2, Lorg/jpos/security/SMException;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/jpos/security/SMException;

    goto :goto_3

    :cond_3
    new-instance v3, Lorg/jpos/security/SMException;

    invoke-direct {v3, v2}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .end local v1    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "accountNo":Ljava/lang/String;
    .end local p2    # "imkac":Ljava/lang/Object;, "TT;"
    .end local p3    # "dcvv":Ljava/lang/String;
    .end local p4    # "expDate":Ljava/util/Date;
    .end local p5    # "serviceCode":Ljava/lang/String;
    .end local p6    # "atc":[B
    .end local p7    # "mkdm":Lorg/jpos/security/MKDMethod;
    :goto_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cmdParameters":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/util/Loggeable;>;"
    .restart local v1    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "accountNo":Ljava/lang/String;
    .restart local p2    # "imkac":Ljava/lang/Object;, "TT;"
    .restart local p3    # "dcvv":Ljava/lang/String;
    .restart local p4    # "expDate":Ljava/util/Date;
    .restart local p5    # "serviceCode":Ljava/lang/String;
    .restart local p6    # "atc":[B
    .restart local p7    # "mkdm":Lorg/jpos/security/MKDMethod;
    :goto_4
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 907
    throw v2
.end method

.method protected verifydCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "dcvv"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/lang/String;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/jpos/security/MKDMethod;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1965
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected verifydCVVImpl(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;[BLorg/jpos/security/MKDMethod;)Z
    .locals 3
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p3, "dcvv"    # Ljava/lang/String;
    .param p4, "expDate"    # Ljava/util/Date;
    .param p5, "serviceCode"    # Ljava/lang/String;
    .param p6, "atc"    # [B
    .param p7, "mkdm"    # Lorg/jpos/security/MKDMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/jpos/security/MKDMethod;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/security/SMException;
        }
    .end annotation

    .line 1947
    .local p0, "this":Lorg/jpos/security/BaseSMAdapter;, "Lorg/jpos/security/BaseSMAdapter<TT;>;"
    .local p2, "imkac":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/jpos/security/SMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not supported in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/security/SMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
