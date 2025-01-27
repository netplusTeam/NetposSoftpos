.class Lorg/jline/reader/impl/LineReaderImpl$Pair;
.super Ljava/lang/Object;
.source "LineReaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TV;)V"
        }
    .end annotation

    .line 2589
    .local p0, "this":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<TU;TV;>;"
    .local p1, "u":Ljava/lang/Object;, "TU;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2590
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$Pair;->u:Ljava/lang/Object;

    .line 2591
    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl$Pair;->v:Ljava/lang/Object;

    .line 2592
    return-void
.end method


# virtual methods
.method public getU()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 2594
    .local p0, "this":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<TU;TV;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$Pair;->u:Ljava/lang/Object;

    return-object v0
.end method

.method public getV()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2597
    .local p0, "this":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<TU;TV;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$Pair;->v:Ljava/lang/Object;

    return-object v0
.end method
