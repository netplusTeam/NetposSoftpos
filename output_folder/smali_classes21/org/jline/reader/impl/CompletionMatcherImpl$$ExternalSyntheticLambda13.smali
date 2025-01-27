.class public final synthetic Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda13;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/reader/impl/CompletionMatcherImpl$$ExternalSyntheticLambda13;->f$0:Ljava/util/function/Predicate;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/jline/reader/impl/CompletionMatcherImpl;->lambda$simpleMatcher$15(Ljava/util/function/Predicate;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
