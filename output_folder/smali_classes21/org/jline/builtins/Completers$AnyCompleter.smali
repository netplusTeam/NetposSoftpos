.class public Lorg/jline/builtins/Completers$AnyCompleter;
.super Ljava/lang/Object;
.source "Completers.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnyCompleter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lorg/jline/builtins/Completers$AnyCompleter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 938
    const-class v0, Lorg/jline/builtins/Completers;

    .line 939
    new-instance v0, Lorg/jline/builtins/Completers$AnyCompleter;

    invoke-direct {v0}, Lorg/jline/builtins/Completers$AnyCompleter;-><init>()V

    sput-object v0, Lorg/jline/builtins/Completers$AnyCompleter;->INSTANCE:Lorg/jline/builtins/Completers$AnyCompleter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 11
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "commandLine"    # Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 943
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    if-eqz p2, :cond_1

    .line 944
    if-eqz p3, :cond_0

    .line 945
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->word()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->wordCursor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "buffer":Ljava/lang/String;
    new-instance v1, Lorg/jline/reader/Candidate;

    invoke-static {v0}, Lorg/jline/utils/AttributedString;->stripAnsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v1

    move-object v5, v0

    invoke-direct/range {v3 .. v10}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    return-void

    .line 944
    .end local v0    # "buffer":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 943
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
