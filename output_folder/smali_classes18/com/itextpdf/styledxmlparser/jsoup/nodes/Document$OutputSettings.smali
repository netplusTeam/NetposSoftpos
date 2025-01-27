.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;

.field private escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

.field private indentAmount:I

.field private outline:Z

.field private prettyPrint:Z

.field private syntax:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->base:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 414
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    .line 417
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline:Z

    .line 418
    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    .line 419
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 422
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 423
    return-void
.end method

.method private partialClone()Ljava/lang/Object;
    .locals 2

    .line 573
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public charset(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .line 477
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 478
    return-object p0
.end method

.method public charset(Ljava/nio/charset/Charset;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 466
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    .line 467
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 468
    return-object p0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 564
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->partialClone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 565
    .local v0, "clone":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 566
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 568
    return-object v0
.end method

.method encoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method

.method public escapeMode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0
    .param p1, "escapeMode"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 444
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 445
    return-object p0
.end method

.method public escapeMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method public indentAmount()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    return v0
.end method

.method public indentAmount(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 1
    .param p1, "indentAmount"    # I

    .line 556
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 557
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    .line 558
    return-object p0
.end method

.method public outline(Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0
    .param p1, "outlineMode"    # Z

    .line 538
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline:Z

    .line 539
    return-object p0
.end method

.method public outline()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline:Z

    return v0
.end method

.method public prettyPrint(Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0
    .param p1, "pretty"    # Z

    .line 519
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    .line 520
    return-object p0
.end method

.method public prettyPrint()Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    return v0
.end method

.method public syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object v0
.end method

.method public syntax(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0
    .param p1, "syntax"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 500
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 501
    return-object p0
.end method
