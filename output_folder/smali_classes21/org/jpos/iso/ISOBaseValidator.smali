.class public Lorg/jpos/iso/ISOBaseValidator;
.super Ljava/lang/Object;
.source "ISOBaseValidator.java"

# interfaces
.implements Lorg/jpos/iso/ISOValidator;
.implements Lorg/jpos/util/LogSource;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field protected breakOnError:Z

.field protected cfg:Lorg/jpos/core/Configuration;

.field protected logger:Lorg/jpos/util/Logger;

.field protected realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/ISOBaseValidator;->logger:Lorg/jpos/util/Logger;

    .line 88
    iput-object v0, p0, Lorg/jpos/iso/ISOBaseValidator;->realm:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/ISOBaseValidator;->breakOnError:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "breakOnError"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/ISOBaseValidator;->logger:Lorg/jpos/util/Logger;

    .line 88
    iput-object v0, p0, Lorg/jpos/iso/ISOBaseValidator;->realm:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/ISOBaseValidator;->breakOnError:Z

    .line 47
    iput-boolean p1, p0, Lorg/jpos/iso/ISOBaseValidator;->breakOnError:Z

    .line 48
    return-void
.end method


# virtual methods
.method public breakOnError()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/jpos/iso/ISOBaseValidator;->breakOnError:Z

    return v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jpos/iso/ISOBaseValidator;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jpos/iso/ISOBaseValidator;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public setBreakOnError(Z)V
    .locals 0
    .param p1, "breakOnErr"    # Z

    .line 59
    iput-boolean p1, p0, Lorg/jpos/iso/ISOBaseValidator;->breakOnError:Z

    .line 60
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lorg/jpos/iso/ISOBaseValidator;->cfg:Lorg/jpos/core/Configuration;

    .line 52
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lorg/jpos/iso/ISOBaseValidator;->logger:Lorg/jpos/util/Logger;

    .line 76
    iput-object p2, p0, Lorg/jpos/iso/ISOBaseValidator;->realm:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 71
    return-object p1

    .line 70
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Can\'t call validate on non Composite"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
