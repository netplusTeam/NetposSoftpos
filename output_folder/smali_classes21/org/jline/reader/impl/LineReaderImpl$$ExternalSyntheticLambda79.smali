.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda79;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iput-boolean p2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda79;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda79;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda79;->f$1:Z

    check-cast p1, Lorg/jline/reader/impl/LineReaderImpl$Pair;

    invoke-virtual {v0, v1, p1}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$doSearchHistory$10$org-jline-reader-impl-LineReaderImpl(ZLorg/jline/reader/impl/LineReaderImpl$Pair;)Z

    move-result p1

    return p1
.end method
