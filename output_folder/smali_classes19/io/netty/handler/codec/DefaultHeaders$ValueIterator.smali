.class final Lio/netty/handler/codec/DefaultHeaders$ValueIterator;
.super Ljava/lang/Object;
.source "DefaultHeaders.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/DefaultHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final name:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private removalPrevious:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/handler/codec/DefaultHeaders;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/DefaultHeaders;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1076
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    .local p2, "name":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->this$0:Lio/netty/handler/codec/DefaultHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    const-string v0, "name"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->name:Ljava/lang/Object;

    .line 1078
    invoke-static {p1}, Lio/netty/handler/codec/DefaultHeaders;->access$100(Lio/netty/handler/codec/DefaultHeaders;)Lio/netty/util/HashingStrategy;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->hash:I

    .line 1079
    invoke-static {p1}, Lio/netty/handler/codec/DefaultHeaders;->access$200(Lio/netty/handler/codec/DefaultHeaders;)[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v1

    invoke-static {p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->access$300(Lio/netty/handler/codec/DefaultHeaders;I)I

    move-result p1

    aget-object p1, v1, p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->calculateNext(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V

    .line 1080
    return-void
.end method

.method private calculateNext(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1110
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    .local p1, "entry":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 1111
    iget v0, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    iget v1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->hash:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->this$0:Lio/netty/handler/codec/DefaultHeaders;

    invoke-static {v0}, Lio/netty/handler/codec/DefaultHeaders;->access$100(Lio/netty/handler/codec/DefaultHeaders;)Lio/netty/util/HashingStrategy;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->name:Ljava/lang/Object;

    iget-object v2, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    iput-object p1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1113
    return-void

    .line 1115
    :cond_0
    iget-object p1, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 1117
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1118
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1084
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1089
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eqz v0, :cond_0

    .line 1093
    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->removalPrevious:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1095
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1096
    iget-object v0, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->calculateNext(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V

    .line 1097
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v0, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    return-object v0

    .line 1090
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1102
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->this$0:Lio/netty/handler/codec/DefaultHeaders;

    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->removalPrevious:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    invoke-static {v1, v0, v2}, Lio/netty/handler/codec/DefaultHeaders;->access$400(Lio/netty/handler/codec/DefaultHeaders;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->removalPrevious:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1106
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1107
    return-void

    .line 1103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
