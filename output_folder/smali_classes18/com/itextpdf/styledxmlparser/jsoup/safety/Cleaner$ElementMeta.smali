.class Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;
.super Ljava/lang/Object;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementMeta"
.end annotation


# instance fields
.field el:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field numAttribsDiscarded:I


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;I)V
    .locals 0
    .param p1, "el"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "numAttribsDiscarded"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;->el:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 197
    iput p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    .line 198
    return-void
.end method
