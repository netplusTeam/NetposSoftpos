.class Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;
.super Ljava/lang/Object;
.source "DescendableLinkedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iter:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList;


# direct methods
.method private constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList;I)V
    .locals 0
    .param p2, "index"    # I

    .line 98
    .local p0, "this":Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;->iter:Ljava/util/ListIterator;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList;ILcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$1;

    .line 94
    .local p0, "this":Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList;I)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 107
    .local p0, "this":Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 122
    .local p0, "this":Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;, "Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList<TE;>.DescendingIterator<TE;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DescendableLinkedList$DescendingIterator;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 123
    return-void
.end method
