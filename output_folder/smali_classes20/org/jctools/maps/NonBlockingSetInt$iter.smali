.class Lorg/jctools/maps/NonBlockingSetInt$iter;
.super Ljava/lang/Object;
.source "NonBlockingSetInt.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingSetInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field _idx:I

.field _nbsi2:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

.field _prev:I

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingSetInt;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingSetInt;)V
    .locals 1

    .line 154
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->this$0:Lorg/jctools/maps/NonBlockingSetInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_idx:I

    .line 153
    iput v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_prev:I

    .line 154
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingSetInt;->access$300(Lorg/jctools/maps/NonBlockingSetInt;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object p1

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_nbsi2:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$iter;->advance()V

    return-void
.end method

.method private advance()V
    .locals 2

    .line 158
    :cond_0
    iget v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_idx:I

    .line 159
    :goto_0
    iget v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_idx:I

    shr-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_nbsi2:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$100(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)[J

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_nbsi2:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$400(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    const/4 v0, -0x2

    iput v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_idx:I

    .line 162
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_nbsi2:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$400(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_nbsi2:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_nbsi2:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    iget v1, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_idx:I

    invoke-virtual {v0, v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 155
    iget v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_idx:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 2

    .line 170
    iget v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_idx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 171
    iput v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_prev:I

    .line 172
    invoke-direct {p0}, Lorg/jctools/maps/NonBlockingSetInt$iter;->advance()V

    .line 173
    iget v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_prev:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingSetInt$iter;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 176
    iget v0, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_prev:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_nbsi2:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v2, v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->remove(I)Z

    .line 178
    iput v1, p0, Lorg/jctools/maps/NonBlockingSetInt$iter;->_prev:I

    .line 179
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
