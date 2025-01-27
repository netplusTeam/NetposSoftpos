.class public Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
.super Ljava/lang/Object;
.source "EmvTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/devnied/emvnfccard/parser/EmvTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public contactLess:Z

.field public readAllAids:Z

.field public readAt:Z

.field public readCplc:Z

.field public readTransactions:Z

.field public removeDefaultParsers:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->contactLess:Z

    .line 125
    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readTransactions:Z

    .line 130
    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readAllAids:Z

    .line 135
    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readAt:Z

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readCplc:Z

    .line 152
    return-void
.end method


# virtual methods
.method public setContactLess(Z)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .locals 0
    .param p1, "contactLess"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->contactLess:Z

    .line 163
    return-object p0
.end method

.method public setReadAllAids(Z)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .locals 0
    .param p1, "readAllAids"    # Z

    .line 186
    iput-boolean p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readAllAids:Z

    .line 187
    return-object p0
.end method

.method public setReadAt(Z)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .locals 0
    .param p1, "readAt"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readAt:Z

    .line 211
    return-object p0
.end method

.method public setReadCplc(Z)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .locals 0
    .param p1, "readCplc"    # Z

    .line 222
    iput-boolean p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readCplc:Z

    .line 223
    return-object p0
.end method

.method public setReadTransactions(Z)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .locals 0
    .param p1, "readTransactions"    # Z

    .line 174
    iput-boolean p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readTransactions:Z

    .line 175
    return-object p0
.end method

.method public setRemoveDefaultParsers(Z)Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .locals 0
    .param p1, "removeDefaultParsers"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->removeDefaultParsers:Z

    .line 199
    return-object p0
.end method
