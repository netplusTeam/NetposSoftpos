.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$2;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "CharacterReferenceInData"

    return-object v0
.end method

.method read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V
    .locals 1
    .param p1, "t"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;
    .param p2, "r"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    .line 92
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$2;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 93
    return-void
.end method
