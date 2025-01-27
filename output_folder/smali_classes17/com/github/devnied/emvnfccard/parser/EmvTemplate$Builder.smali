.class public Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;
.super Ljava/lang/Object;
.source "EmvTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/devnied/emvnfccard/parser/EmvTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

.field private provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

.field private terminal:Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method


# virtual methods
.method public build()Lcom/github/devnied/emvnfccard/parser/EmvTemplate;
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->terminal:Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;

    invoke-direct {v0}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;-><init>()V

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->terminal:Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;

    .line 292
    :cond_0
    new-instance v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    iget-object v2, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->terminal:Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;

    iget-object v3, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;-><init>(Lcom/github/devnied/emvnfccard/parser/IProvider;Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;Lcom/github/devnied/emvnfccard/parser/EmvTemplate$1;)V

    return-object v0

    .line 286
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provider may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfig(Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;
    .locals 0
    .param p1, "config"    # Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    .line 279
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    .line 280
    return-object p0
.end method

.method public setProvider(Lcom/github/devnied/emvnfccard/parser/IProvider;)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;
    .locals 0
    .param p1, "provider"    # Lcom/github/devnied/emvnfccard/parser/IProvider;

    .line 255
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    .line 256
    return-object p0
.end method

.method public setTerminal(Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;
    .locals 0
    .param p1, "terminal"    # Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;

    .line 267
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;->terminal:Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;

    .line 268
    return-object p0
.end method
