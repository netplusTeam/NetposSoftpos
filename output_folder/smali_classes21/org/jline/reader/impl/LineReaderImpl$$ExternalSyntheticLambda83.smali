.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda83;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;

.field public final synthetic f$1:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda83;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda83;->f$1:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda83;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda83;->f$1:Ljava/util/regex/Pattern;

    check-cast p1, Lorg/jline/reader/History$Entry;

    invoke-virtual {v0, v1, p1}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$doSearchHistory$13$org-jline-reader-impl-LineReaderImpl(Ljava/util/regex/Pattern;Lorg/jline/reader/History$Entry;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
