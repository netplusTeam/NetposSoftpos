.class Lorg/jline/widget/TailTipWidgets$Pair;
.super Ljava/lang/Object;
.source "TailTipWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/widget/TailTipWidgets;
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

    .line 761
    .local p0, "this":Lorg/jline/widget/TailTipWidgets$Pair;, "Lorg/jline/widget/TailTipWidgets$Pair<TU;TV;>;"
    .local p1, "u":Ljava/lang/Object;, "TU;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$Pair;->u:Ljava/lang/Object;

    .line 763
    iput-object p2, p0, Lorg/jline/widget/TailTipWidgets$Pair;->v:Ljava/lang/Object;

    .line 764
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

    .line 766
    .local p0, "this":Lorg/jline/widget/TailTipWidgets$Pair;, "Lorg/jline/widget/TailTipWidgets$Pair<TU;TV;>;"
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets$Pair;->u:Ljava/lang/Object;

    return-object v0
.end method

.method public getV()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 769
    .local p0, "this":Lorg/jline/widget/TailTipWidgets$Pair;, "Lorg/jline/widget/TailTipWidgets$Pair<TU;TV;>;"
    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets$Pair;->v:Ljava/lang/Object;

    return-object v0
.end method
