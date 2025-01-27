.class public Lorg/jline/console/CmdLine;
.super Ljava/lang/Object;
.source "CmdLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/console/CmdLine$DescriptionType;
    }
.end annotation


# instance fields
.field private final args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final descType:Lorg/jline/console/CmdLine$DescriptionType;

.field private final head:Ljava/lang/String;

.field private final line:Ljava/lang/String;

.field private final tail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/jline/console/CmdLine$DescriptionType;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "head"    # Ljava/lang/String;
    .param p3, "tail"    # Ljava/lang/String;
    .param p5, "descType"    # Lorg/jline/console/CmdLine$DescriptionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/jline/console/CmdLine$DescriptionType;",
            ")V"
        }
    .end annotation

    .line 44
    .local p4, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/jline/console/CmdLine;->line:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/jline/console/CmdLine;->head:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/jline/console/CmdLine;->tail:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jline/console/CmdLine;->args:Ljava/util/List;

    .line 49
    iput-object p5, p0, Lorg/jline/console/CmdLine;->descType:Lorg/jline/console/CmdLine$DescriptionType;

    .line 50
    return-void
.end method


# virtual methods
.method public getArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/jline/console/CmdLine;->args:Ljava/util/List;

    return-object v0
.end method

.method public getDescriptionType()Lorg/jline/console/CmdLine$DescriptionType;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jline/console/CmdLine;->descType:Lorg/jline/console/CmdLine$DescriptionType;

    return-object v0
.end method

.method public getHead()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jline/console/CmdLine;->head:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jline/console/CmdLine;->line:Ljava/lang/String;

    return-object v0
.end method

.method public getTail()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jline/console/CmdLine;->tail:Ljava/lang/String;

    return-object v0
.end method
