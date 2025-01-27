.class public interface abstract annotation Lcom/visa/vac/tc/VACThinClient$Status;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/VACThinClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALREADY_ENROLLED:I = 0x1

.field public static final AUTHENTICATION_FAILED:I = 0x7

.field public static final COMMUNICATION_FAILED:I = 0x8

.field public static final DEVICE_AUTH_PUB_KID_NULL:I = 0x3

.field public static final INTERNAL_ERROR:I = 0x5

.field public static final MISSING_PARAMETER:I = 0x6

.field public static final NO_NETWORK_OR_TIMED_OUT:I = 0xa

.field public static final READER_AUTHENTICATION_FAILURE:I = 0x10

.field public static final READER_AUTHENTICATION_SUCCESS:I = 0xf

.field public static final READER_TAP_TO_PAIR_FAILURE:I = 0xe

.field public static final READER_TAP_TO_PAIR_SUCCESS:I = 0xd

.field public static final SDK_ENROLL_NOT_DONE:I = 0xc

.field public static final SDK_INIT_NOT_DONE:I = 0xb

.field public static final SUCCESS:I = 0x0

.field public static final TRANSACTION_IN_PROGRESS:I = 0x2

.field public static final TRANSACTION_STARTED:I = 0x9

.field public static final VAC_DEVICE_ID_NULL:I = 0x4
