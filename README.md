# MATLAB for Neuroscience on AWS

Maintained fork of the [MATLAB® on AWS](https://github.com/mathworks-ref-arch/matlab-on-aws) repository from MathWorks®, with adaptions for [neuroscience](https://www.mathworks.com/solutions/neuroscience.html) use cases

## About MATLAB on AWS

The MATLAB on AWS repository is a reference architecture enabling users to set up a single Amazon Web Services™ (AWS) EC2 instance whose Amazon Machine Image (AMI) contains MATLAB with the following capabilities:

- **MATLAB Desktop on a virtual desktop** (Linux) from user's local machine<sup>1</sup>
- **Customizable EC2 machine** including compute & memory options<sup>2</sup>
- **Ready-to-use AMI** with pre-installed MathWorks software including MATLAB
- **Persistent virtual machine (VM)** with user-saved code & data<sup>3</sup>
  <sup>

1. via the Remote Desktop Protocol (RDP)
2. via one-time launch of a pre-configured CloudFormation template
3. via the AWS Web Console
   </sup>

## About MATLAB for Neuroscience on AWS

This maintained fork adapts the AMI from the MATLAB on AWS reference architecture to support [neuroscience](https://www.mathworks.com/solutions/neuroscience.html) users and use cases.

This neuroscience-focused AMI is adapted to pre-configure the following additional components:

| Category           | Components                                                                                                                    | Comment               |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------- | --------------------- |
| Neuroscience Data  | _ [DANDI Data Archive](https://dandiarchive.org/)<br>_ (more coming soon)                                                     | Public AWS S3 buckets |
| Neuroscience Code  | _ [MatNWB](https://www.mathworks.com/matlabcentral/fileexchange/67741-neurodatawithoutborders-matnwb)<br>_ (more coming soon) |                       |
| MathWorks Software | 5 most commonly used MathWorks toolboxes for Neuroscience use cases                                                           | Coming Soon           |

### Update Cycle

This maintained fork is updated at least twice per year around each [MathWorks release date](https://www.mathworks.com/products/new_products/release_model.html?s_tid=srchtitle_release%20schedule_1).

At those times, it is synchronized to the [MATLAB on AWS](https://github.com/mathworks-ref-arch/matlab-on-aws) root repository. Between those updates, there may be additional differences.

## Requirements

You will need a current MATLAB license. Any type of MATLAB license can be used, including Academic and Student. Users in academia are encouraged to check if they already have access via a local [campus license](https://www.mathworks.com/academia/tah-support-program/eligibility.html).

Additional requirements are listed at the [MATLAB on AWS](https://github.com/mathworks-ref-arch/matlab-on-aws) root repository.

**Note**: user is responsible for the cost of the AWS services.
