<?php
namespace App\Mail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class OTPMail extends Mailable{
    use Queueable, SerializesModels;

    public $otp;
    public $customMsg;
    public $passW;
    public function __construct($otp,$customMsg){
        $this->otp=$otp;
        $this->customMsg=$customMsg;
        // $this->passW=$passW;
    }

    public function envelope(): Envelope{
        return new Envelope(
            subject: 'Send OTP Mail from Batch 5',
        );}

    public function content(): Content{
        return new Content(
            view: 'email.OTPPage',
        );}

    public function attachments(): array{
        return [];}
}
