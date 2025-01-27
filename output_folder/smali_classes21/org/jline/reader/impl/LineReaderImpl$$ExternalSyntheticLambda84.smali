.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda84;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda84;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda84;->f$1:Z

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda84;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda84;->f$1:Z

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$getCandidateComparator$15(Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    return p1
.end method
