.class public final synthetic Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda133;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/LineReaderImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda133;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda133;->f$0:Lorg/jline/reader/impl/LineReaderImpl;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/jline/reader/impl/LineReaderImpl;->lambda$getCompletionStyle$28$org-jline-reader-impl-LineReaderImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
