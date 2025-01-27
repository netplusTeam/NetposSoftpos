.class public final synthetic Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/CompletionMatcherImpl;

.field public final synthetic f$1:Lorg/jline/reader/CompletingParsedLine;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/CompletionMatcherImpl;Lorg/jline/reader/CompletingParsedLine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda14;->f$0:Lorg/jline/reader/impl/CompletionMatcherImpl;

    iput-object p2, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda14;->f$1:Lorg/jline/reader/CompletingParsedLine;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda14;->f$0:Lorg/jline/reader/impl/CompletionMatcherImpl;

    iget-object v1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda14;->f$1:Lorg/jline/reader/CompletingParsedLine;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->lambda$compile$1$org-jline-reader-impl-CompletionMatcherImpl(Lorg/jline/reader/CompletingParsedLine;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
