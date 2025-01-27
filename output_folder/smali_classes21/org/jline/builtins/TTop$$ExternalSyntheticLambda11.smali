.class public final synthetic Lorg/jline/builtins/TTop$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda11;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda11;->f$0:I

    invoke-static {v0, p1}, Lorg/jline/builtins/TTop;->lambda$padcut$18(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
