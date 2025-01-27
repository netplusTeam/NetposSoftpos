.class Lorg/jline/builtins/TTop$Column;
.super Ljava/lang/Object;
.source "TTop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/TTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Column"
.end annotation


# instance fields
.field final align:Lorg/jline/builtins/TTop$Align;

.field final format:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final header:Ljava/lang/String;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/jline/builtins/TTop$Align;Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "align"    # Lorg/jline/builtins/TTop$Align;
    .param p3, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jline/builtins/TTop$Align;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 614
    .local p4, "format":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-object p1, p0, Lorg/jline/builtins/TTop$Column;->name:Ljava/lang/String;

    .line 616
    iput-object p2, p0, Lorg/jline/builtins/TTop$Column;->align:Lorg/jline/builtins/TTop$Align;

    .line 617
    iput-object p3, p0, Lorg/jline/builtins/TTop$Column;->header:Ljava/lang/String;

    .line 618
    iput-object p4, p0, Lorg/jline/builtins/TTop$Column;->format:Ljava/util/function/Function;

    .line 619
    return-void
.end method
