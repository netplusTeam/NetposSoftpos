.class public final synthetic Lorg/apache/sshd/common/util/EventListenerUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/EventListener;

    check-cast p2, Ljava/util/EventListener;

    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/EventListenerUtils;->lambda$static$0(Ljava/util/EventListener;Ljava/util/EventListener;)I

    move-result p1

    return p1
.end method
