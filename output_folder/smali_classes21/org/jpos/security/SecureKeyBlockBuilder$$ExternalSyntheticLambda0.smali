.class public final synthetic Lorg/jpos/security/SecureKeyBlockBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/jpos/security/SecureKeyBlockBuilder;->lambda$calcOptionalHeaderLength$0(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
