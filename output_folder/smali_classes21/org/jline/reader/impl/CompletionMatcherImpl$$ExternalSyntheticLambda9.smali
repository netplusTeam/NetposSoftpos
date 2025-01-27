.class public final synthetic Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/jline/reader/impl/CompletionMatcherImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/reader/impl/CompletionMatcherImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda9;->f$0:Lorg/jline/reader/impl/CompletionMatcherImpl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda9;->f$0:Lorg/jline/reader/impl/CompletionMatcherImpl;

    check-cast p1, Lorg/jline/reader/Candidate;

    invoke-virtual {v0, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->lambda$exactMatch$3$org-jline-reader-impl-CompletionMatcherImpl(Lorg/jline/reader/Candidate;)Z

    move-result p1

    return p1
.end method
