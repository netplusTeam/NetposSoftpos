.class public final Lorg/apache/sshd/common/kex/KexProposalOption$Constants;
.super Ljava/lang/Object;
.source "KexProposalOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/kex/KexProposalOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final PROPOSAL_COMP_ALGS_CTOS:I = 0x6

.field public static final PROPOSAL_COMP_ALGS_STOC:I = 0x7

.field public static final PROPOSAL_ENC_ALGS_CTOS:I = 0x2

.field public static final PROPOSAL_ENC_ALGS_STOC:I = 0x3

.field public static final PROPOSAL_KEX_ALGS:I = 0x0

.field public static final PROPOSAL_LANG_CTOS:I = 0x8

.field public static final PROPOSAL_LANG_STOC:I = 0x9

.field public static final PROPOSAL_MAC_ALGS_CTOS:I = 0x4

.field public static final PROPOSAL_MAC_ALGS_STOC:I = 0x5

.field public static final PROPOSAL_SERVER_HOST_KEY_ALGS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
