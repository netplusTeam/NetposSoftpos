.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Doctype"
.end annotation


# instance fields
.field forceQuirks:Z

.field final name:Ljava/lang/StringBuilder;

.field final publicIdentifier:Ljava/lang/StringBuilder;

.field final systemIdentifier:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 82
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Doctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 83
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPublicIdentifier()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIdentifier()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isForceQuirks()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return v0
.end method

.method reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    .line 88
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    .line 89
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 91
    return-object p0
.end method
