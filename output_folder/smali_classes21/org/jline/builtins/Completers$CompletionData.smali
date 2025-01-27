.class public Lorg/jline/builtins/Completers$CompletionData;
.super Ljava/lang/Object;
.source "Completers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletionData"
.end annotation


# instance fields
.field public final argument:Ljava/lang/String;

.field public final condition:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "argument"    # Ljava/lang/String;
    .param p4, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/jline/builtins/Completers$CompletionData;->options:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lorg/jline/builtins/Completers$CompletionData;->description:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/jline/builtins/Completers$CompletionData;->argument:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lorg/jline/builtins/Completers$CompletionData;->condition:Ljava/lang/String;

    .line 63
    return-void
.end method
