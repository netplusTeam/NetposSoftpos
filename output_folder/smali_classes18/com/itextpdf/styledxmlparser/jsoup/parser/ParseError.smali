.class public Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;
.super Ljava/lang/Object;
.source "ParseError.java"


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;->pos:I

    .line 56
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 57
    return-void
.end method

.method varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "errorFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p2, p3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 61
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;->pos:I

    .line 62
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;->pos:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
