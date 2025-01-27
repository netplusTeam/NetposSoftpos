.class public abstract Lorg/jpos/iso/packager/PackagerWrapper;
.super Ljava/lang/Object;
.source "PackagerWrapper.java"

# interfaces
.implements Lorg/jpos/iso/ISOPackager;
.implements Lorg/jpos/util/LogSource;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field protected cfg:Lorg/jpos/core/Configuration;

.field protected logger:Lorg/jpos/util/Logger;

.field protected realm:Ljava/lang/String;

.field protected standardPackager:Lorg/jpos/iso/ISOPackager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/packager/PackagerWrapper;->logger:Lorg/jpos/util/Logger;

    .line 40
    iput-object v0, p0, Lorg/jpos/iso/packager/PackagerWrapper;->realm:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/jpos/iso/packager/PackagerWrapper;->standardPackager:Lorg/jpos/iso/ISOPackager;

    .line 46
    return-void
.end method


# virtual methods
.method public getFieldDescription(Lorg/jpos/iso/ISOComponent;I)Ljava/lang/String;
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "fldNumber"    # I

    .line 53
    iget-object v0, p0, Lorg/jpos/iso/packager/PackagerWrapper;->standardPackager:Lorg/jpos/iso/ISOPackager;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1, p2}, Lorg/jpos/iso/ISOPackager;->getFieldDescription(Lorg/jpos/iso/ISOComponent;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 53
    :goto_0
    return-object v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jpos/iso/packager/PackagerWrapper;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getPackager()Lorg/jpos/iso/ISOPackager;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jpos/iso/packager/PackagerWrapper;->standardPackager:Lorg/jpos/iso/ISOPackager;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jpos/iso/packager/PackagerWrapper;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public abstract pack(Lorg/jpos/iso/ISOComponent;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 5
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 85
    const-string v0, "Invalid inner-packager"

    iput-object p1, p0, Lorg/jpos/iso/packager/PackagerWrapper;->cfg:Lorg/jpos/core/Configuration;

    .line 86
    const-string v1, "inner-packager"

    invoke-interface {p1, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "packagerName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 89
    .local v2, "p":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOPackager;

    invoke-virtual {p0, v3}, Lorg/jpos/iso/packager/PackagerWrapper;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 90
    iget-object v3, p0, Lorg/jpos/iso/packager/PackagerWrapper;->standardPackager:Lorg/jpos/iso/ISOPackager;

    instance-of v4, v3, Lorg/jpos/core/Configurable;

    if-eqz v4, :cond_0

    .line 91
    check-cast v3, Lorg/jpos/core/Configurable;

    invoke-interface {v3, p1}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "p":Ljava/lang/Class;
    :cond_0
    nop

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v3, v0, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 94
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v3, v0, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 92
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v3, v0, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 2
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lorg/jpos/iso/packager/PackagerWrapper;->logger:Lorg/jpos/util/Logger;

    .line 67
    iput-object p2, p0, Lorg/jpos/iso/packager/PackagerWrapper;->realm:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/jpos/iso/packager/PackagerWrapper;->standardPackager:Lorg/jpos/iso/ISOPackager;

    instance-of v1, v0, Lorg/jpos/util/LogSource;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lorg/jpos/util/LogSource;

    invoke-interface {v0, p1, p2}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setPackager(Lorg/jpos/iso/ISOPackager;)V
    .locals 0
    .param p1, "packger"    # Lorg/jpos/iso/ISOPackager;

    .line 58
    iput-object p1, p0, Lorg/jpos/iso/packager/PackagerWrapper;->standardPackager:Lorg/jpos/iso/ISOPackager;

    .line 59
    return-void
.end method

.method public abstract unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
