.class public final synthetic Lorg/jpos/rc/Result$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/jpos/rc/Result$Entry;

    invoke-static {p1}, Lorg/jpos/rc/Result;->lambda$hasWarnings$1(Lorg/jpos/rc/Result$Entry;)Z

    move-result p1

    return p1
.end method
