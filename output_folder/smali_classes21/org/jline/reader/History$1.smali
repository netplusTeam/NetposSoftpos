.class Lorg/jline/reader/History$1;
.super Ljava/lang/Object;
.source "History.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/reader/History;->reverseIterator(I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/jline/reader/History$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final it:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lorg/jline/reader/History$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jline/reader/History;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/jline/reader/History;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/reader/History;

    .line 132
    iput-object p1, p0, Lorg/jline/reader/History$1;->this$0:Lorg/jline/reader/History;

    iput p2, p0, Lorg/jline/reader/History$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Lorg/jline/reader/History;->iterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Lorg/jline/reader/History$1;->it:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/jline/reader/History$1;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lorg/jline/reader/History$1;->next()Lorg/jline/reader/History$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jline/reader/History$Entry;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/jline/reader/History$1;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/History$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/jline/reader/History$1;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 145
    iget-object v0, p0, Lorg/jline/reader/History$1;->this$0:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->resetIndex()V

    .line 146
    return-void
.end method
