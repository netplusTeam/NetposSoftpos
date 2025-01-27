.class public Lorg/apache/sshd/server/forward/AcceptAllForwardingFilter;
.super Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;
.source "AcceptAllForwardingFilter.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/forward/AcceptAllForwardingFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lorg/apache/sshd/server/forward/AcceptAllForwardingFilter;

    invoke-direct {v0}, Lorg/apache/sshd/server/forward/AcceptAllForwardingFilter;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/forward/AcceptAllForwardingFilter;->INSTANCE:Lorg/apache/sshd/server/forward/AcceptAllForwardingFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/forward/StaticDecisionForwardingFilter;-><init>(Z)V

    .line 29
    return-void
.end method
